cmake_minimum_required (VERSION 3.8)

project (MyProgram1 CXX)
my_find_src_files (src_files MyProgram1)
add_executable (MyProgram1 ${src_files})
my_add_compile_options (MyProgram1)
my_add_pch (MyProgram1)


if (MSVC)
   install(TARGETS MyProgram1 DESTINATION ${MyCopyBinToDir})
elseif (MyTargetType STREQUAL ubuntu)
   my_post_build_copy_bin(MyProgram1)
elseif (MyTargetType STREQUAL beagle)
   my_post_build_scp_bin(MyProgram1)
elseif (MyTargetType STREQUAL dart)
   my_post_build_scp_bin(MyProgram1)
endif()


