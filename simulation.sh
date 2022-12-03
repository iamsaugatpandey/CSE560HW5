for i in 64 256 1024 #num registers
do
    for j in 4 16 64 256 #rob entries
    do
        for k in 4 16 64 256 #num iq entries
        do
            $GEM5/build/ARM/gem5.opt --outdir="./sims/${i}-n-regs_${j}-rob-entries_${k}-iq-entries" hw5config.py -c $GEM5/../test_progs/daxpy/daxpy_arm_big  --cpu-type="DerivO3CPU" --caches --l2cache --num-phys-int-regs=$i --num-rob-entries=$j --num-iq-entries=$k
        done
    done
done