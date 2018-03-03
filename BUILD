# Brogue

filegroup(
    name="tcod_sources",
    srcs=glob(["vendor/libtcod/src/**/*.c"])
)

filegroup(
    name="tcod_headers",
    srcs=glob(["vendor/libtcod/include/**/*.h"])
)

filegroup(
    name="sdl2_sources",
    srcs=glob(["vendor/SDL2/src/**/*.c", "vendor/SDL2/src/**/*.h"])
)

filegroup(
    name="sdl2_headers",
    srcs=glob(["vendor/SDL2/include/**/*.h"])
)

filegroup(
    name="brogue_sources",
    srcs=[
        "brogue/src/Architect.c",
	"brogue/src/Combat.c",
	"brogue/src/Dijkstra.c",
	"brogue/src/Globals.c",
	"brogue/src/IO.c",
	"brogue/src/Buttons.c",
	"brogue/src/MainMenu.c",
	"brogue/src/Items.c",
	"brogue/src/Light.c",
	"brogue/src/Monsters.c",
	"brogue/src/Movement.c",
	"brogue/src/RogueMain.c",
	"brogue/src/Random.c",
	"brogue/src/Recordings.c",
        "brogue/src/platform/platformdependent.c",
	"brogue/src/platform/tcod-platform.c",
	"brogue/src/platform/wasm_main.c",
    ],
)

filegroup(
    name="brogue_headers",
    srcs=[
        "brogue/src/IncludeGlobals.h",
        "brogue/src/Rogue.h",
        "brogue/src/platform/PlatformDefines.h",
        "brogue/src/platform/platform.h",
    ],
)

filegroup(
    name="fonts",
    srcs=glob(["brogue/fonts/font-*.png"]),
)

cc_binary(
    name="wabrogue.html",
    srcs=[
        ":brogue_sources",
        ":brogue_headers",
        ":tcod_sources",
        ":tcod_headers",
        ":sdl2_sources",
        ":sdl2_headers",
    ],
    defines=[
        "__EMSCRIPTEN__",
        "BROGUE_TCOD",
        "LIBTCOD_EXPORTS",
        "NO_OPENGL",
        "TCOD_EMSCRIPTEN",
        "TCOD_CONSOLE_SUPPORT",
        "TCOD_IMAGE_SUPPORT",
        "TCOD_OSUTIL_SUPPORT",
        "USING_GENERATED_CONFIG_H",
    ],
    copts=[
        "-Ivendor/SDL2/include",
        "-Ivendor/SDL2/src",
        "-Ivendor/libtcod/include",
        "-Ibrogue/src",
        "-Ibrogue/src/platform",
        "-idirafter vendor/SDL2/src/video/khronos",
    ],
    linkopts=[
        "-ldl",
        "--preload-file brogue/keymap@keymap",
        "--preload-file brogue/fonts@fonts",
    ],
    data=[
        "brogue/icon.bmp",
        "brogue/keymap",
        ":fonts",
    ],
)
