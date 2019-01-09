

template<int poolsize, int stride, int mode, int x, int y, int z>
struct pool_layer
{
	tensor_t<x,y,z> input;
	tensor_t<(x - poolsize )/stride + 1, (y - poolsize )/stride + 1 , z> output;
	tensor_t<poolsize, poolsize, 1> a_prev_temp;

	pool_layer()
	{

	}


void forward_pooling ()
{
	int n_w = output.size.x;
	int n_h = output.size.y;
	int n_c = output.size.z;

	int vert_start,vert_end,horiz_start,horiz_end;
	fixedAP max =0, avg = 0;

	for (int i = 0; i < n_h; ++i)
	{
		for (int j = 0; j < n_w; ++j)
		{
			for (int ch = 0; ch < n_c; ++ch)
			{
				    vert_start = i * stride;
                    vert_end = vert_start + poolsize;
                    horiz_start = j * stride;
                    horiz_end = horiz_start + poolsize;

                    // copy input with pool size
                   //  output(i,j,ch) = input(vert_start, horiz_start, ch);
                    max = input(vert_start, horiz_start, ch);
                    avg = 0;
                    for (int v = vert_start; v < vert_end; ++v)
                    {
                    	for (int ho = horiz_start; ho < horiz_end; ++ho)
                    	{
                    		//a_prev_temp(v - vert_start, ho - horiz_start,0) = input(v, ho, ch);
                    		if (mode == 0) // max
                    		{
                    			if(input(v, ho, ch) > max)
                    				max = input(v,ho,ch);
                    			output(i,j,ch) = max;
                    		}
                    		else // avg
                    		{
                    			avg += (1.0 / (poolsize * poolsize)) * input(v, ho, ch);
                    			output(i,j,ch) = avg;
                    		}
                    	}
                    }
			}
		}
	}
}

};

