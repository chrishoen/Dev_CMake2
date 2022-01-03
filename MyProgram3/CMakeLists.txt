cmake_minimum_required (VERSION 3.8)

project (MyProgram3 CXX)
my_find_src_files (src_files MyProgram3)
add_executable (MyProgram3 ${src_files})
my_add_compile_options (MyProgram3)
my_add_pch (MyProgram3)

target_include_directories(MyProgram3 PUBLIC ${PROJECT_SOURCE_DIR})

my_inc_import_MySharedLib(MyProgram3)
my_lib_import_MySharedLib(MyProgram3)


if (MSVC)
   install(TARGETS MyProgram3 DESTINATION ${MyCopyBinToDir})
elseif (MyTargetType STREQUAL ubuntu)
   my_post_build_copy_bin(MyProgram3)
elseif (MyTargetType STREQUAL beagle)
   my_post_build_scp_bin(MyProgram3)
elseif (MyTargetType STREQUAL dart)
   my_post_build_scp_bin(MyProgram3)
endif()
