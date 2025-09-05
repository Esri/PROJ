project "proj"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "2AF753D3-1B77-4440-80BE-0CC573B4D323"

flags { "NoPCH" }

includedirs {
  "include",
  "src",
}

defines {
  "PNG_INTEL_SSE", -- allow libpng to use intel intrinsics if they're available
}

files {
  "arm/arm_init.c",
  "arm/palette_neon_intrinsics.c",
  "arm/filter_neon_intrinsics.c",
  "intel/filter_sse2_intrinsics.c",
  "intel/intel_init.c",
  "png.c",
  "pngerror.c",
  "pngget.c",
  "pngmem.c",
  "pngpread.c",
  "pngread.c",
  "pngrio.c",
  "pngrtran.c",
  "pngrutil.c",
  "pngset.c",
  "pngtrans.c",
  "pngwio.c",
  "pngwrite.c",
  "pngwtran.c",
  "pngwutil.c",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
