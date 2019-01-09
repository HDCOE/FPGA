#include "ap_fixed.h"
#include "Tensor.h"

void Lenet( tensor_t<2,2,2> * data_in,
			tensor_t<2,2,2> * conv,
			tensor_t<2,2,2> * relu,
			tensor_t<2,2,2> * pool,
			tensor_t<2,2,2> * fc,
			tensor_t<3,3,3> * data_out);


