wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/llvm-10.0.0.src.tar.xz
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang-10.0.0.src.tar.xz
wget https://github.com/jemalloc/jemalloc/releases/download/5.2.1/jemalloc-5.2.1.tar.bz2
tar -xvf clang-10.0.0.src.tar.xz
tar -xvf jemalloc-5.2.1.tar.bz2
tar -xvf llvm-10.0.0.src.tar.xz
mv clang-10.0.0.src clang
mv llvm-10.0.0.src llvm
mv jemalloc-5.2.1 jemalloc
mkdir -p build
cd build
cp ../../resources/build.sh .
sh build.sh
ninja
cd ..
cd jemalloc
sh autogen.sh
make -j
cd ..

git clone https://github.com/piyus/Phoenix-2.0_cg
cd Phoenix-2.0_cg/input
sh download.sh
cd ..
source setenv.sh
cp Defines1.mk Defines.mk
make
cd tests
./run.sh
cd ..
cd ..
