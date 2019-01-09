#include "hls_math.h"

template<int x, int y, int z>
struct  classifier
{
	tensor_t<x, y, z> input;
	tensor_t<x, y ,z> y_hat;

	classifier ()
	{

	}


void softmax()
{
	fixedAP exp_z = 0;
	fixedAP sum_exp_z = 0;
	fixedAP max_value;
	fixedAP in;

// find maximum value
		max_value = input(0,0,0);
		for (int filter = 0; filter < z ; ++filter)
			{
				if(input(0,0,filter)>max_value)
					max_value = input(0,0,filter) ;
			}

// Numeric stability ( reduce large exponential
		for (int filter = 0; filter < z; ++filter)
		{
			in = input(0,0,filter) - max_value; // Numeric stability
			sum_exp_z += hls::exp(in);
		}

		for (int filter = 0; filter < z ; ++filter)
		{
			in = input(0,0,filter) - max_value;
			exp_z = hls::exp(in);
			y_hat(0,0,filter) = exp_z / sum_exp_z;
		}

}
};


// softmax classifier //

