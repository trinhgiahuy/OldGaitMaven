# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imu_sequenced: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iimu_sequenced:/home/pi/catkin_ws/src/imu_sequenced/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imu_sequenced_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_custom_target(_imu_sequenced_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu_sequenced" "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header:sensor_msgs/Imu"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(imu_sequenced
  "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_sequenced
)

### Generating Services

### Generating Module File
_generate_module_cpp(imu_sequenced
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_sequenced
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imu_sequenced_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imu_sequenced_generate_messages imu_sequenced_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_dependencies(imu_sequenced_generate_messages_cpp _imu_sequenced_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_sequenced_gencpp)
add_dependencies(imu_sequenced_gencpp imu_sequenced_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_sequenced_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(imu_sequenced
  "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_sequenced
)

### Generating Services

### Generating Module File
_generate_module_eus(imu_sequenced
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_sequenced
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(imu_sequenced_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(imu_sequenced_generate_messages imu_sequenced_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_dependencies(imu_sequenced_generate_messages_eus _imu_sequenced_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_sequenced_geneus)
add_dependencies(imu_sequenced_geneus imu_sequenced_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_sequenced_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(imu_sequenced
  "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_sequenced
)

### Generating Services

### Generating Module File
_generate_module_lisp(imu_sequenced
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_sequenced
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imu_sequenced_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imu_sequenced_generate_messages imu_sequenced_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_dependencies(imu_sequenced_generate_messages_lisp _imu_sequenced_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_sequenced_genlisp)
add_dependencies(imu_sequenced_genlisp imu_sequenced_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_sequenced_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(imu_sequenced
  "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_sequenced
)

### Generating Services

### Generating Module File
_generate_module_nodejs(imu_sequenced
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_sequenced
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(imu_sequenced_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(imu_sequenced_generate_messages imu_sequenced_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_dependencies(imu_sequenced_generate_messages_nodejs _imu_sequenced_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_sequenced_gennodejs)
add_dependencies(imu_sequenced_gennodejs imu_sequenced_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_sequenced_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(imu_sequenced
  "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_sequenced
)

### Generating Services

### Generating Module File
_generate_module_py(imu_sequenced
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_sequenced
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imu_sequenced_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imu_sequenced_generate_messages imu_sequenced_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/imu_sequenced/msg/ImuSequenced.msg" NAME_WE)
add_dependencies(imu_sequenced_generate_messages_py _imu_sequenced_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_sequenced_genpy)
add_dependencies(imu_sequenced_genpy imu_sequenced_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_sequenced_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_sequenced)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_sequenced
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(imu_sequenced_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_sequenced)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_sequenced
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(imu_sequenced_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_sequenced)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_sequenced
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(imu_sequenced_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_sequenced)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu_sequenced
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(imu_sequenced_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_sequenced)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_sequenced\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_sequenced
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(imu_sequenced_generate_messages_py sensor_msgs_generate_messages_py)
endif()
