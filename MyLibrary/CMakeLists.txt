cmake_minimum_required (VERSION 3.8)

project (MyLibrary CXX)

my_find_src_files (src_files MyLibrary)
my_find_inc_files (inc_files)
add_library (MyLibrary STATIC ${src_files})
my_add_compile_options (MyLibrary)
my_add_pch (MyLibrary)

target_include_directories(MyLibrary INTERFACE ${PROJECT_SOURCE_DIR})

