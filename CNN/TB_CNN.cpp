

//#include "Tensor.h"
//#include <iostream.h>
#include "stdio.h"
#include "CNN.hpp"
//#include "Batch_norm.h"
using namespace std;

void print_tensor(fixedAP * value, int x, int y, int z)
{
		for(int c = 0 ; c < z; c++)
		{
			cout << "dim:" << c << endl;
				for(int h = 0 ; h < y; h++)
				{
					for(int w = 0 ; w < x; w++)
					{
						cout  << value[c * (y * x) + h * x + w]; //<< endl;
						cout << " ";
					}
					cout << endl ;
				}

		}
}
int main (void )
{
	float in, out;
	tensor_t<2,2,2>  input;
	tensor_t<3,3,3>  output;
	tensor_t<2,2,2> relu;
	tensor_t<2,2,2> pool;
	tensor_t<2,2,2> fc;

	tensor_t<2,2,2> conv;
	int size=2;

	output.set_all(0);
	for(int k = 0 ; k < input.size.z; k++)
		for(int j = 0 ; j < input.size.y; j++)
			for(int i = 0 ; i < input.size.x; i++)
				input(i,j,k) = k * 2 * 2 + j * 2 + i+1;//input.data[i][j][k] = k * 2 *2 + j * 2 + i;

	Lenet( &input, &conv , &relu, &pool, &fc, &output);

	cout  << "input:========= " << endl;
	print_tensor(&input.data[0], input.size.x, input.size.y, input.size.z);

	cout  << "conv:========== " << endl;
	print_tensor(&conv.data[0], conv.size.x, conv.size.y, conv.size.z);

	cout  << "relu:========== " << endl;
	print_tensor(&relu.data[0], conv.size.x, conv.size.y, conv.size.z);

	cout  << "fc:============ " << endl;
	print_tensor(&fc.data[0], fc.size.x, fc.size.y, fc.size.z);

	cout  << "output2:======= " << endl;
	print_tensor(&output.data[0], output.size.x, output.size.y, output.size.z);
	return 0;
}
