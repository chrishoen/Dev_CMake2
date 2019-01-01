cmake_minimum_required (VERSION 3.8)

project (MyProject2 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
add_executable (MyProject2 ${SRC_FILES})

target_include_directories(MyProject2 PRIVATE MyLibrary2)
target_link_libraries(MyProject2 MyLibrary2)

message(STATUS "********************************* MyProject2")
message(STATUS "CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS})
message(STATUS "CMAKE_EXE_LINKER_FLAGS " ${CMAKE_EXE_LINKER_FLAGS})
message(STATUS "CMAKE_INSTALL_PREFIX " ${CMAKE_INSTALL_PREFIX})

install(TARGETS MyProject2 DESTINATION bin)
