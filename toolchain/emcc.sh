#!/bin/bash
# toolchain/emcc.sh

set -euo pipefail

export LLVM_ROOT='external/emsdk_clang'
export EMSCRIPTEN_NATIVE_OPTIMIZER='external/emsdk_clang/optimizer'
export BINARYEN_ROOT='external/emsdk_clang/'
export NODE_JS=''
export EMSCRIPTEN_ROOT='external/emsdk'
export SPIDERMONKEY_ENGINE=''
export EM_EXCLUSIVE_CACHE_ACCESS=1
export EMCC_SKIP_SANITY_CHECK=1
export EMCC_WASM_BACKEND=0

export EM_CACHE="toolchain/cache"

# Run emscripten to compile and link
python external/emsdk/emcc.py "$@"

# Remove the first line of .d file (emscripten resisted all my attempts to make
# it realize it's just the absolute location of the source)
find . -name "*.d" -exec sed -i '2d' {} \;
