cmake_minimum_required (VERSION 3.8)

include(MyCodeMacros.cmake)
include(MyGlobalImports.cmake)
include(MyLocalImports.cmake)
include(MyExports.cmake)

project ("Dev_Make2")
my_init_global_import_variables()
my_init_export_variables()


add_subdirectory ("MyLibrary")
add_subdirectory ("MyProject")
return()

