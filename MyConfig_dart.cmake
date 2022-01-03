#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
# copied from MyConfig_dart.cmake

function(my_init_config_variables)

   set (MyTargetType dart PARENT_SCOPE)

   set (MyTargetHostName "root@dart" PARENT_SCOPE)

   set (MyCopyBinToDir "/opt/prime/bin" PARENT_SCOPE)
   set (MyCopyLibToDir "/opt/prime/lib" PARENT_SCOPE)

   set (MySudo "" PARENT_SCOPE)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
