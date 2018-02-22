# Because this is an emscripten situation it's just easier to
# jam all sources into a single target.

package(default_visibility=["//visibility:public"])

filegroup(
    name="sources",
    srcs=glob(["src/**/*.c", "src/**/*.h"])
)

filegroup(
    name="headers",
    srcs=glob(["include/**/*.h"])
)

filegroup(
    name="khronos",
    srcs=["src/video/khronos"]
)

filegroup(
    name="all",
    srcs=[":sources", ":headers"]
)
