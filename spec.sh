mkdir -p t
mkdir -p spec
sudo mount -t iso9660 -o ro,exec,loop cpu2017-1_0_5.iso ./t
cd t
sh install.sh -f -d ../spec
cd ..
sudo umount t
rm -rf t
cp ../resources/runspec_cg.sh ./spec
cp ../resources/runspec.sh ./spec
