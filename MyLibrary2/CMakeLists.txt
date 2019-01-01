cmake_minimum_required (VERSION 3.8)

project (MyLibrary2 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
file(GLOB INC_FILES ${PROJECT_SOURCE_DIR}/*.h)
add_library (MyLibrary2 STATIC ${SRC_FILES})

target_include_directories(MyLibrary2 PUBLIC ${PROJECT_SOURCE_DIR})
