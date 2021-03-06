
project "freetype"
    language "C"
    kind "StaticLib"
    targetname "freetype"
    targetdir "bin"
    staticruntime "on"
    runtime "Release"
    symbols "On"
    location "build"

    system "Windows"
    architecture "x86_64"

    includedirs { "include", "src" }
	defines { "FT2_BUILD_LIBRARY=1", "_UNICODE", "UNICODE", "_LIB", "_CRT_SECURE_NO_WARNINGS" }
	removedefines { "DEBUG" }

    files {
		"premake5.lua",
		"include/**.h",

		"src/base/ftbbox.c",
		"src/base/ftbdf.c",
		"src/base/ftbitmap.c",
		"src/base/ftcid.c",
		"src/base/ftfstype.c",
		"src/base/ftgasp.c",
		"src/base/ftglyph.c",
		"src/base/ftgxval.c",
		"src/base/ftmm.c",
		"src/base/ftotval.c",
		"src/base/ftpatent.c",
		"src/base/ftpfr.c",
		"src/base/ftstroke.c",
		"src/base/ftsynth.c",
		"src/base/fttype1.c",
		"src/base/ftwinfnt.c",

		"src/autofit/autofit.c",
		"src/bdf/bdf.c",
		"src/cff/cff.c",
		"src/base/ftbase.c",
		"src/cache/ftcache.c",
		"src/gzip/ftgzip.c",
		"src/base/ftinit.c",
		"src/lzw/ftlzw.c",
		"src/base/ftsystem.c",
		"src/pcf/pcf.c",
		"src/pfr/pfr.c",
		"src/psaux/psaux.c",
		"src/pshinter/pshinter.c",
		"src/psnames/psmodule.c",
		"src/raster/raster.c",
		"src/sfnt/sfnt.c",
		"src/smooth/smooth.c",
		"src/truetype/truetype.c",
		"src/type1/type1.c",
		"src/cid/type1cid.c",
		"src/type42/type42.c",
		"src/winfonts/winfnt.c",

		"builds/windows/ftdebug.c"
	}

	FREETYPE_INCLUDE_DIRS = { _SCRIPT_DIR .. "/include", _SCRIPT_DIR .. "/src" }
	FREETYPE_LINK_DIRS = { _SCRIPT_DIR .. "/bin/" }
	FREETYPE_LINKS = { "freetype" }
