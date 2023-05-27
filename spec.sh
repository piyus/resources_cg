mkdir t
mkdir spec
sudo mount -t iso9660 -o ro,exec,loop cpu2017-1_0_5.iso ./t
cd t
sh install.sh -f -d ../spec
sudo umount t
cd ..
rm -rf t
cp ../resources/default.cfg ./spec/config
cp ../resources/runspec.sh ./spec

