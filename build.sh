cmake -G Ninja -DLLVM_ENABLE_PROJECTS="clang" -DLLVM_TARGETS_TO_BUILD="X86" -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_DUMP=ON -DCMAKE_BUILD_TYPE=Release ../llvm/
