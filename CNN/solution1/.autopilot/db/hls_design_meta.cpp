#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_AWADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_ARADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilite_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilite_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "Lenet";
