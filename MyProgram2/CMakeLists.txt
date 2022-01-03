cmake_minimum_required (VERSION 3.8)

project (MyProgram2 CXX)
my_find_src_files (src_files MyProgram2)
add_executable (MyProgram2 ${src_files})
my_add_compile_options (MyProgram2)
my_add_pch (MyProgram2)

target_include_directories(MyProgram2 PUBLIC ${PROJECT_SOURCE_DIR})

my_inc_import_MyStaticLib(MyProgram2)
my_inc_import_MySharedLib(MyProgram2)

my_lib_import_MyStaticLib(MyProgram2)
my_lib_import_MySharedLib(MyProgram2)

if (MSVC)
   install(TARGETS MyProgram2 DESTINATION ${MyCopyBinToDir})
elseif (MyTargetType STREQUAL ubuntu)
   my_post_build_copy_bin(MyProgram2)
elseif (MyTargetType STREQUAL beagle)
   my_post_build_scp_bin(MyProgram2)
elseif (MyTargetType STREQUAL dart)
   my_post_build_scp_bin(MyProgram2)
endif()
