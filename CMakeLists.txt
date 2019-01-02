cmake_minimum_required (VERSION 3.8)

project ("Dev_CMake2")

set(CMAKE_INSTALL_PREFIX "/var/tmp/install")
set(CMAKE_PREFIX_PATH    "/var/tmp/install")

add_subdirectory ("MyProject2")
add_subdirectory ("MyLibrary2")

