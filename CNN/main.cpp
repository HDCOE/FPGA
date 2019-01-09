#include <cassert>
#include <vector>

//#include <cstdint>
#include <iostream>
//#include <fstream>

//#include <string.h>
#include <stdio.h>
#include <stdlib.h> 
#include <math.h>
//#include "byteswap.h"

#include "Tensor.h"
#include "Param.h"

#include "CONV_layer.h"

//#include "POOLING_layer.h"
//#include "RELU_layer.h"
//#include "FC_layer.h"

#include "Generate_data.h"
//#include "Batch_norm.h"
using namespace std;

int main ()
{

	int pad =2;
	int stride =1;
	int Wsize = 2;
	int Nfilter = 2;

	float error = 0, error_total = 0.0;

	//vector<dataset> dataset_and;
	//dataset_and =  Dataset_and();
	tensor_t input(2,2,1);
	input(0,0,0)=0;

// layer conv1
	conv_layer conv1(Wsize, Nfilter, stride, pad, input.size );
// layer conv2
//	conv_layer * conv2 = new conv_layer(Wsize, Nfilter, stride, 1, conv1->output.size );
/*
//start training
float n = 0;
	for (int epoch = 0; epoch < 1; ++epoch)
	{
		error_total = 0;
		n = 0;
		for (int i = 2; i < 4 ; ++i)
		{
			 n++;
	// layer conv1
			conv1->input =  input;
			conv1->Conv_forward();

	// layer conv2
			conv2->input = conv1->output;
			conv2->Conv_forward();
			//print_tensor(conv2->output);

	// update weight conv
		//	conv2->conv_weight_update();
			//conv1->conv_weight_update();

		}
	cout << "this is epoch: " << epoch << " error = " << (-1 / n) * error_total  << endl;
	}
*/
}
