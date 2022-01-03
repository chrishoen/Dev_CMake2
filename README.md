# Dev_CMake1
cmake test programs, c++, vstudio, open folder, cmake, linux, windows

## Build target platforms
``` markdown
This supports builds for the following platforms:

beagle  -- builds on windows for a debian arm7 target, tested on beaglebone black, raspberrypi4
dart    -- builds on remote ubuntu for a yocto aarch64 target, tested on veriscite dart
ubuntu  -- builds on remote ubuntu for a ubuntu target, tested on intel nuc
windows -- builds on windows for a windows target, tested on intel nuc
```
## CMake Files
``` markdown
CMakeLists.txt               -- Solution main cmake file
CMakeSettings.json           -- current  cmake settings, copied from one of the following
CMakeSettings_beagle.json    -- specific cmake settings
CMakeSettings_dart.json      -- specific cmake settings
CMakeSettings_ubuntu.json    -- specific cmake settings
CMakeSettings_win.json       -- specific cmake settings
imx8mm-toolchain.cmake       -- specific toolchain file
MyBeagleToolchain.cmake      -- specific toolchain file
MyCodeMacros.cmake           -- macros for compiler settings
MyConfig.cmake               -- current  config variables, copied from one of the following
MyConfig_beagle.cmake        -- specific config variables
MyConfig_dart.cmake          -- specific config variables
MyConfig_ubuntu.cmake        -- specific config variables   
MyConfig_win.cmake           -- specific config variables
MyGlobalImports.cmake        -- macros for importing global libraries
MyLocalImports.cmake         -- macros for importing local libraries
MyOverrides.cmake            -- some cmake overrides
MyPostBuild.cmake            -- macros for post build copying
MyPrecompiledHeader.cmake    -- macros for using precompiled headers
MySpecial.cmake              -- special debuf stuff  
set_for_beagle.bat           -- copy specific CMakeSettings.json and MyConfig.cmake to current
set_for_dart.bat             -- copy specific CMakeSettings.json and MyConfig.cmake to current
set_for_ubuntu.bat           -- copy specific CMakeSettings.json and MyConfig.cmake to current
set_for_win.bat              -- copy specific CMakeSettings.json and MyConfig.cmake to current

Before start a new build session, run one of the set_for_* bat files
```
