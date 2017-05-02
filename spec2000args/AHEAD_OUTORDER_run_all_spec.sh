outputdir="../../OUTORDER_AHEAD/"

for D in `find . -maxdepth 1 -type d`
do
    dir=${D##*/}
    echo $dir
    if [ "$dir" != "." ]
    then
	cd "${dir}"
	./RUN"${dir}" ../../simplesim-3.0/sim-outorder ../../spec2000binaries/"${dir}"00.peak.ev6 -max:inst 50000000 -fastfwd 20000000 -redir:sim "${outputdir}""${dir}".txt -bpred ahead -bpred:2lev 8 1024 7 0 -bpred:bimod 1024 -bpred:ras 16 -bpred:btb 1024 4
	cd ..
    fi
done
