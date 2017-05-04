# AheadBranchPredictionSimpleScalar
Implementing Ahead Branch Prediction in SimpleScalar

Implementing an Ahead Branch Predictor as described in Jin, et al.'s 2013 work, "A novel architecture for ahead branch prediction."
Implemented for CSCE 614-600, spring 2017, for academic use.

The division of work was an equal split.

To build, copy `bpred.h`, `bpred.c`, `sim-bpred.c`, and `sim-outorder.c` into the simple-sim3.0 directory and `make`.

You can run the ahead branch predictor with sim-bpred or sim-outorder as you would any other prediction scheme, using the flag `-bpred ahead`, and be sure to include the command line options for the `-bpred:2lev [...]`, and `-bpred:bimod [...]`, e.g.

    ./RUNammp ../../simplesim-3.0/sim-outorder ../../spec2000binaries/ammp00.peak.ev6 -max:inst 50000000 -fastfwd 20000000 -redir:sim ammp_output.txt -bpred ahead -bpred:2lev 8 1024 7 0 -bpred:bimod 1024 -bpred:ras 16 -bpred:btb 1024 4
