cp ../../changes/perlbench.diff .
cp ../../changes/perlbench.diff .
patch -p1 --forward < perlbench.diff
patch -p1 --forward < gcc.diff
source shrc
runcpu --size=ref --action=clobber --copies=1 --tune=base --noreportable --iterations=1 505.mcf_r 502.gcc_r 500.perlbench_r 525.x264_r 557.xz_r 519.lbm_r 538.imagick_r 544.nab_r
runcpu --size=ref --action=run --copies=1 --tune=base --noreportable --iterations=1 505.mcf_r 502.gcc_r 500.perlbench_r 525.x264_r 557.xz_r 519.lbm_r 538.imagick_r 544.nab_r
