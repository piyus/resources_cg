mkdir -p t_cg
mkdir -p spec_cg
sudo mount -t iso9660 -o ro,exec,loop cpu2017-1_0_5.iso ./t_cg
cd t_cg
sh install.sh -f -d ../spec_cg
cd ..
sudo umount t_cg
rm -rf t_cg
cp ../resources/runspec_cg.sh ./spec_cg
cd spec_cg
chmod +x runspec_cg.sh
./runspec_cg.sh
