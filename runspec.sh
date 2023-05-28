cp ../../resources/native.cfg ./config
source shrc
runcpu --size=ref --config=native.cfg --action=clobber --copies=1 --tune=base --noreportable --iterations=1 505.mcf_r 502.gcc_r 500.perlbench_r 525.x264_r 557.xz_r 519.lbm_r 538.imagick_r 544.nab_r
runcpu --size=ref --config=native.cfg --action=run --copies=1 --tune=base --noreportable --iterations=1 505.mcf_r 502.gcc_r 500.perlbench_r 525.x264_r 557.xz_r 519.lbm_r 538.imagick_r 544.nab_r
