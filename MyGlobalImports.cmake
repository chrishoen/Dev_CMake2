#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_init_global_import_variables)

   if (MSVC)
      set (MySharedLibIncludePath "C:/MyTools/MyLib/include/MySharedLib" PARENT_SCOPE)
      set (MySharedLibImportPath  "C:/MyTools/MyLib/lib/MySharedLib.lib" PARENT_SCOPE)
   elseif (MyTargetType STREQUAL ubuntu)
      set (MySharedLibIncludePath "/opt/confs/prime/include/MySharedLib" PARENT_SCOPE)
      set (MySharedLibImportPath  "/opt/confs/prime/lib/libMySharedLib.so" PARENT_SCOPE)
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

   if (MSVC)
      add_library(MySharedLib STATIC IMPORTED)
      set_target_properties(MySharedLib PROPERTIES IMPORTED_LOCATION ${MySharedLibImportPath})
      target_link_libraries(${_target} MySharedLib)
   else()
      add_library(MySharedLib SHARED IMPORTED)
      set_target_properties(MySharedLib PROPERTIES IMPORTED_LOCATION ${MySharedLibImportPath})
      target_link_libraries(${_target} MySharedLib)
   endif()

endfunction()

function(my_inc_import_MySharedLib _target)

   target_include_directories(${_target} PUBLIC ${MySharedLibIncludePath})

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

