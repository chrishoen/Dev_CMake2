#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_lib_import_MyStaticLib _target)

   target_link_libraries(${_target} MyStaticLib)

endfunction()

function(my_inc_import_MyStaticLib _target)

   target_include_directories(${_target} PRIVATE $<TARGET_PROPERTY:MyStaticLib,INTERFACE_INCLUDE_DIRECTORIES>)

endfunction()





