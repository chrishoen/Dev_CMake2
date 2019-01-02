cmake_minimum_required (VERSION 3.8)

project (MyProject2 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
add_executable (MyProject2 ${SRC_FILES})

add_library(MyLibrary1 STATIC IMPORTED)
set_target_properties(MyLibrary1 PROPERTIES IMPORTED_LOCATION "/var/tmp/install/lib/libMyLibrary1.a")
target_include_directories(MyLibrary1 INTERFACE "/var/tmp/install/include/MyLibrary1")


target_include_directories(MyProject2 PRIVATE MyLibrary2)
target_include_directories(MyProject2 PRIVATE MyLibrary1)
#target_include_directories(MyProject2 PRIVATE "/var/tmp/install/include/MyLibrary1")

target_link_libraries(MyProject2 MyLibrary2)
target_link_libraries(MyProject2 MyLibrary1)

install(TARGETS MyProject2 DESTINATION bin)
