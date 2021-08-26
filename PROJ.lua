project "PROJ"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "E63D9AD5-9F32-4772-B710-38EFF074067C"

defines {
}

includedirs {
  "include",
  "src",
  "../sqlite",
}

files {
  "src/*.h",
  "src/*.c",
  "src/*.hpp",
  "src/*.cpp",
}

excludes {
   "src/apps/**",
   "src/tests/**",
   "src/filemanager.cpp",
   "src/filemanager.hpp",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
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
