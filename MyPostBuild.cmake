#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_scp_bin _target)

   set(_command scp -p ${_target} ${MyTargetHostName}:${MyCopyBinToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command ssh ${MyTargetHostName} "${MySudo}chmod 777 ${MyCopyBinToDir}/${_target}")
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_scp_lib _target)

   set(_command scp -p lib${_target}.so ${MyTargetHostName}:${MyCopyLibToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command ssh ${MyTargetHostName} "${MySudo}chmod 777 ${MyCopyLibToDir}/lib${_target}.so")
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_copy_bin _target)

   set(_command cp -p ${_target} ${MyCopyBinToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command chmod 777 ${MyCopyBinToDir}/${_target})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_copy_lib _target)

   set(_command cp -p lib${_target}.so ${MyCopyLibToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command chmod 777 ${MyCopyLibToDir}/lib${_target}.so)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
