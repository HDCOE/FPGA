#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/hadee/FPGA_project/SimpleCNN_FPGA/CNN/solution1/.autopilot/db/a.g.bc ${1+"$@"}
