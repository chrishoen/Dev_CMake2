cmake_minimum_required (VERSION 3.8)

set (CMAKE_USER_MAKE_RULES_OVERRIDE "${CMAKE_CURRENT_LIST_DIR}/MyOverrides.cmake")
include(MyConfig.cmake)
include(MyCodeMacros.cmake)
include(MyPostBuild.cmake)
include(MyGlobalImports.cmake)
include(MyLocalImports.cmake)
include(MyPrecompiledHeader.cmake)
include(MySpecial.cmake)

project ("Dev_CMake2")
my_init_config_variables() 
my_special1() 
my_init_global_import_variables()

add_subdirectory ("MyStaticLib")
add_subdirectory ("MyProgram2")
return()


add_subdirectory ("MyStaticLib")
add_subdirectory ("MyProgram1")
add_subdirectory ("MyProgram2")
return()

add_subdirectory ("MyProgram1")
return()





