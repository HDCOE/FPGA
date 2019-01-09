#include <vector>
#include <assert.h>

struct point_t
{
 int x, y, z;

};

struct  hyperparam
{
	int stride;
	int pad;
};

typedef ap_fixed<16,8> fixedAP;
//typedef float fixedAP;
template< int x, int y, int z>
struct tensor_t
{
	fixedAP data[x * y * z];

	#pragma data
	//fixedAP * data_p;
	point_t  size;


/*Define size of tensor */
	tensor_t( )
	{
		//data_p = &data[0];//data_p = &data[0][0][0];
		size.x = x;
		size.y = y;
		size.z = z;
	}
	void set_all( fixedAP value )
		{
			for (int Nz = 0; Nz < size.z; ++Nz)
			{
				for (int Ny = 0; Ny < size.y; ++Ny)
				{
					for (int Nx = 0; Nx < size.x; ++Nx)
					{
						data[Nz * (size.x * size.y) + Ny * (size.x) + Nx] = value;
					}
				}
			}
		}
	fixedAP& operator()( int _x, int _y, int _z )
		{
			return this->get( _x, _y, _z );
		}
	fixedAP& get(int _x, int _y, int _z)
	{
	  return data [_z * (x * y) + _y * (x) +_x];//	return data[_z][_y][_x];
	}
};



/*Print all data in tensor*/
