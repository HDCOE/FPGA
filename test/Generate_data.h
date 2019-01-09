#include <vector>

struct dataset
{
	tensor_t data;
	tensor_t y_out;
	dataset(int x, int y, int z, int Nclass):
		data(x, y, z),
		y_out(1,1, Nclass)
	{

	}
};

std::vector<dataset> Dataset_and()
{
	dataset set(2,2,1,2);// {tensor_t<float>( 2, 2, 1 ), tensor_t<float>( 1, 1, 2 )};
	std::vector <dataset> cases;
	// ab
	set.data(0,0,0) = 0;
	set.data(0,1,0) = 0;
    // cd
	set.data(1,0,0) = 0;
	set.data(1,1,0) = 0;

	set.y_out(0,0,0) = 0; //y1 = ab
	set.y_out(0,0,1) = 1; //y2 = ab
	cases.push_back(set);

    dataset set1(2,2,1,2);// {tensor_t<float>( 2, 2, 1 ), tensor_t<float>( 1, 1, 2 )};
		// ab
	set1.data(0,0,0) = 0;
	set1.data(0,1,0) = 1;
    // cd
	set1.data(1,0,0) = 0;
	set1.data(1,1,0) = 1;

	set1.y_out(0,0,0) = 0; //y1 = ab
	set1.y_out(0,0,1) = 1; //y2 = ab
	cases.push_back(set1);

	dataset set2(2,2,1,2);// {tensor_t<float>( 2, 2, 1 ), tensor_t<float>( 1, 1, 2 )};
		// ab
	set2.data(0,0,0) = 1;
	set2.data(0,1,0) = 0;
    // cd
	set2.data(1,0,0) = 1;
	set2.data(1,1,0) = 0;

	set2.y_out(0,0,0) = 1; //y1 = ab
	set2.y_out(0,0,1) = 0; //y2 = ab
	cases.push_back(set2);

	dataset set3(2,2,1,2);// {tensor_t<float>( 2, 2, 1 ), tensor_t<float>( 1, 1, 2 )};
		// ab
	set3.data(0,0,0) = 1;
	set3.data(0,1,0) = 1;
    // cd
	set3.data(1,0,0) = 1;
	set3.data(1,1,0) = 1;

	set3.y_out(0,0,0) = 0; //y1 = ab
	set3.y_out(0,0,1) = 1; //y2 = ab
	cases.push_back(set3);
return cases;
}
