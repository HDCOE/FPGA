
template<int x, int y, int z>
struct activation_layer
{
	tensor_t<x, y, z> input;
	tensor_t<x, y, z> output;
	activation_layer()
	{

	}
void forward_ReLu()
{
	for (int i = 0; i < x; ++i)
	{
		for (int j = 0; j < y; ++j)
		{
			for (int ch = 0; ch < z; ++ch)
			{
				if(input(i,j,ch) < 0)
					output(i,j,ch) = 0;
				else
					output(i,j,ch) = input(i,j,ch);
			}
		}
	}

}
};
