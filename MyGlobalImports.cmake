#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_init_global_import_variables)

   if (MVC)
      set (MySharedLibIncludePath "C:/MyTools/MyLib/include/MySharedLib" PARENT_SCOPE)
      set (MySharedLibImportPath  "C:/MyTools/MyLib/lib/MySharedLib.lib" PARENT_SCOPE)
   elseif (MyTargetType STREQUAL ubuntu)
      set (MySharedLibIncludePath "/opt/prime/include/MySharedLib" PARENT_SCOPE)
      set (MySharedLibImportPath  "/opt/prime/lib/libMySharedLib.so" PARENT_SCOPE)
   elseif (MyTargetType STREQUAL beagle)
      set (MySharedLibIncludePath "C:/MyTools/MyLib/include/MySharedLib" PARENT_SCOPE)
      set (MySharedLibImportPath  "C:/MyTools/MyLib/lib/libMySharedLib.so" PARENT_SCOPE)
   elseif (MyTargetType STREQUAL dart)
   endif()


endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_lib_import_MySharedLib _target)

   add_library(MySharedLib STATIC IMPORTED)
   set_target_properties(MySharedLib PROPERTIES IMPORTED_LOCATION ${MySharedLibImportPath})
   target_link_libraries(${_target} MySharedLib)

endfunction()

function(my_inc_import_MySharedLib _target)

   target_include_directories(${_target} PUBLIC ${MySharedLibIncludePath})

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

