cmake_minimum_required (VERSION 3.8)

project (MyProject2 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
add_executable (MyProject2 ${SRC_FILES})

target_include_directories(MyProject2 PRIVATE MyLibrary2)
target_include_directories(MyProject2 PRIVATE "/var/tmp/Dev_CMake1/install/include")

add_library(MyLibrary1 STATIC IMPORTED)
set_target_properties(MyLibrary1 PROPERTIES IMPORTED_LOCATION "/var/tmp/Dev_CMake1/install/lib/libMyLibrary1.a")

target_link_libraries(MyProject2 MyLibrary2)
target_link_libraries(MyProject2 MyLibrary1)

install(TARGETS MyProject2 DESTINATION bin)
