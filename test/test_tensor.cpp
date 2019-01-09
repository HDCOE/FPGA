#include "test.hpp"

template<int Wsize, int Nfilter, int stride,  int pad, int x, int y ,int z>
struct  conv_layer1
{
 	tensor_t<x,y,z> input;
	//std::vector <tensor_t<Wsize, Wsize, z> > W;
 	tensor_t<Wsize, Wsize, z> W[Nfilter];
	tensor_t<1,1,Nfilter> bias;
	tensor_t<(x - Wsize + 2*pad)/stride+1, (y - Wsize + 2*pad)/stride+1, Nfilter>  output;

	 conv_layer1(){
		 bias.set_all(0);
		// initialize weight
		for (int i = 0; i < Nfilter; ++i)
		{
			tensor_t<Wsize, Wsize, z> W_t;

			for (int c = 0; c < W_t.size.z; ++c)
			{
				for (int w = 0; w < W_t.size.x; ++w)
				{
					for (int h = 0; h <  W_t.size.y; ++h)
					{
						W_t(w,h,c) = 1; //W_t.data[w][h][c] = 1;//0.5f + (float)c / 10;
					}
				}
			}
					W[i] = W_t;//W.insert(W.begin()+i,W_t);

		}
	}

	 void Padding(tensor_t<x + 2*pad, y + 2*pad, z> &padd_out, int padsize)
	 {
	 	const int w = input.size.x;
	 	const int h = input.size.y;
	 	const int ch = input.size.z;

	 	int n_h = h + 2 * padsize;
	 	int n_w = w + 2 * padsize;

	 	for (int i = 0; i < n_w; ++i)
	 	{
	 	for (int j = 0; j < n_h; ++j)
	 	{
	 		for (int c = 0; c < ch; ++c)
	 		{
	 			if ((i >= padsize && j >= padsize) && (i < n_w - padsize && j < n_h - padsize ))
	 			{
	 				padd_out(i,j,c) = input(i - padsize, j - padsize, c);//.data[i - padsize][j - padsize][c];
	 			}
	 			else
	 			{
	 				padd_out(i,j,c) = 0.0;
	 			}
	 		}
	 	}
	 	}
	 }

	 void Conv_forward()
	 {
		   const int w = x;
		   const int h = y;
		   const int c = z;

		   const int f = Wsize;
		    int n_c = W[0].size.z;

		    int n_w = output.size.x;
		    int n_h = output.size.y;

		 	int vert_start,vert_end,horiz_start,horiz_end;

		 	tensor_t<w + 2*pad, h + 2*pad, c> a_slice_pad;

		 	Padding(a_slice_pad, pad);

			for (int filter_N = 0; filter_N < Nfilter; ++filter_N)
			{
				for (int i = 0; i < n_w; ++i)
				{
					for (int j = 0; j < n_h; ++j)
					{
						output(i,j,filter_N)= 0;
						for (int ch = 0; ch < n_c; ++ch)
						{
							//Find the corners of the current "slice"
			                    vert_start = i * stride;
			                    vert_end = vert_start + f;
			                    horiz_start = j * stride;
			                    horiz_end = horiz_start + f;

			                 //convolution here
			                    for (int v = vert_start; v < vert_end; ++v)
			                    {
			                    	for (int ho = horiz_start; ho < horiz_end; ++ho)
			                    	{
			                    		 output(i,j,filter_N) += a_slice_pad(v,ho,ch) * W[filter_N](v - vert_start, ho - horiz_start, ch);
			                    	}
			                    }
						}
						 output(i,j,filter_N) += bias(0,0,filter_N);
					}
				}
			}

	 }

};

void test_tensor(int size,  tensor_t<2,2,2>  * data_in,  tensor_t<3,3,3> * data_out)
{
#pragma HLS INTERFACE s_axilite port = data_in bundle = axilite
#pragma HLS INTERFACE s_axilite port = data_out bundle = axilite
#pragma HLS INTERFACE s_axilite port = return bundle = axilite

	conv_layer1<2,2,2,1,2,2,2>   conv1;

	conv_layer1<2,2,2,1,2,2,2>   conv2;

	for(int k = 0 ; k < data_in->size.z; k++)
		for(int j = 0 ; j < data_in->size.y; j++)
			for(int i = 0 ; i < data_in->size.x; i++)
				conv1.input.data[k * ( data_in->size.x * data_in->size.y) + j * (data_in->size.x) + i] = data_in->data[k * ( data_in->size.x * data_in->size.y) + j * (data_in->size.x) + i]; // conv1.input(i,j,k)  = data_in(i,j,k);//conv1.input.data[k][j][i] = data_in->data[k][j][i];//



	conv1.Conv_forward();

	int w1 = conv1.output.size.x; int h1 = conv1.output.size.y; int c1 = conv1.output.size.z;

	for(int k = 0 ; k < c1; k++)
			for(int j = 0 ; j < h1; j++)
				for(int i = 0 ; i < w1; i++)
					conv2.input.data[k * ( w1 * h1) + j * (w1) + i] = conv1.output.data[k * ( w1 * h1) + j * (w1) + i]; // conv1.input(i,j,k)  = data_in(i,j,k);//conv1.input.data[k][j][i] = data_in->data[k][j][i];//


	conv2.Conv_forward();


		int w = conv2.output.size.x;
		int h = conv2.output.size.y;
		int c = conv2.output.size.z;

		int wo = data_out->size.x; int ho = data_out->size.y; int co = data_out->size.z;

		for(int k = 0 ; k < c; k++)
				for(int j = 0 ; j < h; j++)
					for(int i = 0 ; i < w; i++)
						data_out->data[k * (wo * ho)+ j * wo + i] = conv2.output.data[k * (w * h)+ j * w + i];// data_out->data[k][j][i] = conv1.output.data[k][j][i];

}

/*
float a[2][2] = {{1,2},{3,4}};
x.data = &a[0][0];
data_out.data[0][0][0] = x.data[0];
*/
