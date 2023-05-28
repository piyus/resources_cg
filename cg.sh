mkdir -p build
cd build
cp ../resources/build.sh .
sh build.sh
ninja
cd ..
cd jemalloc
sh autogen.sh
make -j
cd ..

mkdir -p cg
cd cg
git clone https://github.com/piyus/Phoenix-2.0_cg
cd Phoenix-2.0_cg/input
sh download.sh
cd ..
source setenv.sh
make
cd tests
./run.sh
cd ..
cd ..
