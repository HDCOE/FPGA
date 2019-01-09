//#include <vector>
struct cache
{
	tensor_t dA; //output
	std::vector<tensor_t > dW;
	tensor_t db;

	cache( point_t dAsize, point_t dWsize, int Nfilter, point_t dbsize):

		 dA(dAsize.x, dAsize.y, dAsize.z), 
		
		 db(dbsize.x, dbsize.y, dbsize.z)
	{
			//initialize Weight
		tensor_t dW_t(dWsize.x, dWsize.y, dWsize.z);
		
		for (int i = 0; i < Nfilter; ++i)
		{
			dW_t.set_all(0);// = create_tensor(dW_t.size.x, dW_t.size.y, dW_t.size.z,0);
			dW.insert(dW.begin()+i,dW_t);
			// initial db
			db(0,0,i) = 0.0;
		}
		// initialize dA
		for (int w = 0; w < dA.size.x; ++w)
		{
			for (int h = 0; h < dA.size.y; ++h)
			{
				for (int c = 0; c < dA.size.z; ++c)
				{
					dA(w,h,c) = 0.0;
				}
			}
		}
	}

};
