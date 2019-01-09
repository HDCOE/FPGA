
template <int out_size, int x, int y, int z>
struct  fc_layer
{
	tensor_t< x, y, z > input;

	tensor_t<x, y, z > W[out_size];

	tensor_t<1, 1, out_size > bias;
	tensor_t<1, 1, out_size > output;
	tensor_t<1, 1, out_size > y_hat;

	fc_layer()
	{
		//initialize Weight
		float volume_size = x * y * z;

		// intialize bias
		bias.set_all(0);// = create_tensor(1,1,out_size,0);

		for (int i = 0; i < out_size; ++i)
		{
			tensor_t<x, y, z> W_t;

			for (int c = 0; c < W_t.size.z; ++c)
			{
				for (int w = 0; w < W_t.size.x; ++w)
				{
					for (int h = 0; h <  W_t.size.y; ++h)
					{
						W_t(w,h,c) = -1 + 2 * i; // 0.5f + (float)c / 10;
					}
				}
			}
			W[i] = W_t;
		}
	}

void forward_fc()
{
	int n_c = out_size;

	fixedAP dot_out = 0.0;
	for (int filter = 0; filter < n_c ; ++filter)
	{
		// this is dot product W dot X
		dot_out = 0.0;
		for(int i = 0; i < x; ++i)
			for (int j = 0; j < y; ++j)
				for (int c = 0; c < z; ++c)
					dot_out += input(i,j,c) * W[filter](i,j,c);

		output(0,0,filter) = (dot_out) + bias(0,0,filter);
	}
}


};
