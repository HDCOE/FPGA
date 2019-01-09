//#include "test.hpp"

//using namespace std;
//#include <random>
#pragma pack(push, 1)

void Padding(tensor_t output, tensor_t input, int padsize)
{
	int w = input.size.x;
	int h = input.size.y;
	int ch = input.size.z;

	int n_h = h+2*padsize;
	int n_w = w+2*padsize;

	for (int i = 0; i < n_h; ++i)
	{
	for (int j = 0; j < n_w; ++j)
	{
		for (int c = 0; c < ch; ++c)
		{
			if ((i >= padsize && j >= padsize) && (i < n_h - padsize && j < n_w - padsize ))
			{
				output(i,j,c) = input(i - padsize,j - padsize,c);
			}
			else
			{
				output(i,j,c) = 0.0;
			}
		}
	}
	}
}
struct  conv_layer 
{
	
	tensor_t input;
	std::vector <tensor_t> W;
	tensor_t bias;
	tensor_t output;
	hyperparam h_param;
	cache gradient;

	//tensor_t<float> dZ; // input gradient


	conv_layer(int Wsize, int Nfilter, int stride, int pad, point_t &in_size):
	// define input 
	input(in_size.x, in_size.y, in_size.z),
	// create output size by h = h - f+2pad/stride+1, w = w - f+2pad/stride+1
	output((in_size.x - Wsize + 2*pad)/stride+1, (in_size.y - Wsize + 2*pad)/stride+1, Nfilter),
	// bias with deep Nfilter
	bias(1,1,Nfilter),
	// create gradient dA, dW, db
	gradient(input.size, input.size, Nfilter, bias.size)

	//dZ(output.size.x, output.size.y, output.size.z)
	{		
		//initialize Weight
 	 	//std::default_random_engine generator;
  		//std::normal_distribution<float> distribution(0,1);

		// intialize bias
		bias.set_all(0);// create_tensor(1,1,Nfilter,0);
		// initialize pad,stride	
		h_param.pad = pad;
		h_param.stride = stride;	
		float volume_size = Wsize * Wsize * Wsize;
		for (int i = 0; i < Nfilter; ++i)
		{
			tensor_t W_t(Wsize, Wsize, in_size.z);
			//W_t = create_tensor(W_t.size.x, W_t.size.y, W_t.size.z, 0.5+ (float)i / 10);
			for (int c = 0; c < W_t.size.z; ++c)
			{
				for (int w = 0; w < W_t.size.x; ++w)
				{
					for (int h = 0; h <  W_t.size.y; ++h)
					{
						W_t(w,h,c) = 0.5f + (float)c / 10;//((double) rand() / (RAND_MAX)); //(float)i /10 ;// random number between 0-1 //0.5f + (float)c / 10;
					}
				}
			}
			W.insert(W.begin()+i,W_t);
			W_t.clear();
			
		}
	}
/*
void Conv_forward()
{
	int stride = h_param.stride;
	int pad = h_param.pad;

	int w = input.size.x;
	int h = input.size.y;
	int c = input.size.z;

	int f = W[0].size.x;
	int n_c = W[0].size.z;

	int n_w = output.size.x;
	int n_h = output.size.y;

	int vert_start,vert_end,horiz_start,horiz_end;
 
	tensor_t a_slice_pad(w + 2 * pad, h + 2  * pad, c); // padding output

	// Padding input with zero
	 //a_slice_pad = Padding(input, h_param.pad);
	Padding(a_slice_pad, input, h_param.pad);

	for (int filter_N = 0; filter_N < (int)W.size(); ++filter_N)
	{
		for (int i = 0; i < n_h; ++i)
		{
			for (int j = 0; j < n_w; ++j)
			{
				for (int ch = 0; ch < n_c; ++ch)
				{
					//Find the corners of the current "slice"
	                    vert_start = i * stride;
	                    vert_end = vert_start + f;
	                    horiz_start = j * stride;
	                    horiz_end = horiz_start + f;

	                 //convolution here   
	                    output(i,j,filter_N) = 0;
	                    for (int v = vert_start; v < vert_end; ++v)
	                    {	
	                    	for (int ho = horiz_start; ho < horiz_end; ++ho)
	                    	{
	                    		output(i,j,filter_N) += a_slice_pad(v,ho,ch) * W[filter_N](v-vert_start, ho - horiz_start,  ch );
	                    	}
	                    }
				}
				output(i,j,filter_N) += bias(0,0,filter_N);
			}
		}
	}
	a_slice_pad.clear();
}*/
};

#pragma pack(pop)
