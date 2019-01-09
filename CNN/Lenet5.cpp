
#include "conv.hpp"
#include "activation.hpp"
#include "pooling.hpp"
#include "fc.hpp"
#include "classifier.hpp"

//copy 2 to 1
void copy_tensor(fixedAP * in1, fixedAP * in2, point_t size1, point_t size2)
{
	int w1 = size1.x; int h1 = size1.y; int c1 = size1.z;
	int w2 = size2.x; int h2 = size2.y; int c2 = size2.z;

	for(int k = 0 ; k < c2; k++)
			for(int j = 0 ; j < h2; j++)
				for(int i = 0 ; i < w2; i++)
					in1[k * ( w1 * h1) + j * (w1) + i] = in2[k * ( w2 * h2) + j * (w2) + i];

}
void Lenet( tensor_t<2,2,2> * data_in,
			tensor_t<2,2,2> * conv,
			tensor_t<2,2,2> * relu,
			tensor_t<2,2,2> * pool,
			tensor_t<2,2,2> * fc,
			tensor_t<3,3,3> * data_out)
{
#pragma HLS INTERFACE s_axilite port = data_in bundle = axilite
#pragma HLS INTERFACE s_axilite port = data_out bundle = axilite

#pragma HLS INTERFACE s_axilite port = conv bundle = axilite
#pragma HLS INTERFACE s_axilite port = relu bundle = axilite
#pragma HLS INTERFACE s_axilite port = pool bundle = axilite
#pragma HLS INTERFACE s_axilite port = fc bundle = axilite

#pragma HLS INTERFACE s_axilite port = return bundle = axilite

	conv_layer1<2,2,2,1,2,2,2> conv1;


	activation_layer<2,2,2> fx;

	pool_layer<2, 1, 1, 2, 2, 2> pool1;

	fc_layer<2, 2,2,2> fc1;

	classifier<1,1,2> softmax;



	copy_tensor(&conv1.input.data[0], &data_in->data[0], conv1.input.size, data_in->size);
	conv1.Conv_forward();

//	copy_tensor(&pool1.input.data[0], &conv1.output.data[0], pool1.input.size, conv1.output.size);
//	pool1.forward_pooling();

//	copy_tensor(&data_out->data[0], &pool1.output.data[0], data_out->size,  pool1.output.size );

	copy_tensor(&fx.input.data[0], &conv1.output.data[0], fx.input.size, conv1.output.size);
	fx.forward_ReLu();

	copy_tensor(&fc1.input.data[0], &fx.output.data[0], fc1.input.size, fx.output.size);
	fc1.forward_fc();

	copy_tensor(&softmax.input.data[0], &fc1.output.data[0], softmax.input.size, fc1.output.size);
	softmax.softmax();

	copy_tensor(&data_out->data[0], &softmax.y_hat.data[0], data_out->size,  softmax.y_hat.size );

	copy_tensor(&conv->data[0], &conv1.output.data[0], conv->size, conv1.output.size);
	copy_tensor(&relu->data[0], &fx.output.data[0], relu->size, fx.output.size);
	copy_tensor(&fc->data[0], &fc1.output.data[0], fc->size, fc1.output.size);

	//copy_tensor(&data_out->data[0], &fc1.output.data[0], data_out->size,  fc1.output.size );
}
