
_EMSDK_VERSION = "1.37.33"

new_http_archive(
    name = 'emsdk',
    url = 'https://github.com/kripken/emscripten/archive/%s.tar.gz' % _EMSDK_VERSION,
    build_file = 'toolchain/emsdk.BUILD',
    strip_prefix = "emscripten-%s" % _EMSDK_VERSION,
)

new_http_archive(
    name = 'emsdk_clang',
    url = 'https://s3.amazonaws.com/mozilla-games/emscripten/packages/llvm/tag/linux_64bit/emscripten-llvm-e%s.tar.gz' % _EMSDK_VERSION,
    build_file = 'toolchain/emsdk_clang.BUILD',
    strip_prefix = "emscripten-llvm-e%s" % _EMSDK_VERSION,
)

# don't do this lol
#register_toolchains(
#  '//toolchain:wasm32_toolchain'
#)
