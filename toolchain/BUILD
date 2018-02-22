package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "emscripten",
    toolchains = {
        "wasm32|emscripten": ":wasm32_toolchain",
    },
)

filegroup(
    name = "cache",
    srcs=[
        "cache/asmjs/dlmalloc.bc",
        "cache/asmjs/dlmalloc_debug.bc",
        "cache/asmjs/dlmalloc_threadsafe.bc",
        "cache/asmjs/dlmalloc_threadsafe_debug.bc",
        "cache/asmjs/libc.bc",
        "cache/asmjs/libc-mt.bc",
        "cache/asmjs/libcxx.bc",
        "cache/asmjs/libcxxabi.bc",
        "cache/asmjs/libcxx_noexcept.bc",
        "cache/asmjs/wasm-libc.bc",
        "cache/asmjs/zlib.bc",
        "cache/is_vanilla.txt",
    ],
)

filegroup(name = "empty")

filegroup(
    name = "all",
    srcs = [
        "emcc.sh",
        ":cache",
        "@emsdk//:all",
        "@emsdk_clang//:all",
    ],
)

cc_toolchain(
    name = "wasm32_toolchain",
    all_files = ":all",
    compiler_files = ":all",
    cpu = "wasm32",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":all",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)
