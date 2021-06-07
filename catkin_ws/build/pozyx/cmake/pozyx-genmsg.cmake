# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pozyx: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipozyx:/home/pi/catkin_ws/src/pozyx/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iimu_sequenced:/home/pi/catkin_ws/src/imu_sequenced/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pozyx_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_custom_target(_pozyx_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pozyx" "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pozyx
  "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pozyx
)

### Generating Services

### Generating Module File
_generate_module_cpp(pozyx
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pozyx
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pozyx_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pozyx_generate_messages pozyx_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_dependencies(pozyx_generate_messages_cpp _pozyx_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pozyx_gencpp)
add_dependencies(pozyx_gencpp pozyx_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pozyx_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pozyx
  "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pozyx
)

### Generating Services

### Generating Module File
_generate_module_eus(pozyx
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pozyx
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pozyx_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pozyx_generate_messages pozyx_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_dependencies(pozyx_generate_messages_eus _pozyx_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pozyx_geneus)
add_dependencies(pozyx_geneus pozyx_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pozyx_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pozyx
  "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pozyx
)

### Generating Services

### Generating Module File
_generate_module_lisp(pozyx
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pozyx
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pozyx_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pozyx_generate_messages pozyx_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_dependencies(pozyx_generate_messages_lisp _pozyx_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pozyx_genlisp)
add_dependencies(pozyx_genlisp pozyx_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pozyx_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pozyx
  "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pozyx
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pozyx
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pozyx
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pozyx_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pozyx_generate_messages pozyx_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_dependencies(pozyx_generate_messages_nodejs _pozyx_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pozyx_gennodejs)
add_dependencies(pozyx_gennodejs pozyx_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pozyx_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pozyx
  "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pozyx
)

### Generating Services

### Generating Module File
_generate_module_py(pozyx
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pozyx
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pozyx_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pozyx_generate_messages pozyx_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/pozyx/msg/StringStamped.msg" NAME_WE)
add_dependencies(pozyx_generate_messages_py _pozyx_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pozyx_genpy)
add_dependencies(pozyx_genpy pozyx_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pozyx_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pozyx)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pozyx
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pozyx_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET imu_sequenced_generate_messages_cpp)
  add_dependencies(pozyx_generate_messages_cpp imu_sequenced_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pozyx)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pozyx
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pozyx_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET imu_sequenced_generate_messages_eus)
  add_dependencies(pozyx_generate_messages_eus imu_sequenced_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pozyx)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pozyx
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pozyx_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET imu_sequenced_generate_messages_lisp)
  add_dependencies(pozyx_generate_messages_lisp imu_sequenced_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pozyx)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pozyx
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pozyx_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET imu_sequenced_generate_messages_nodejs)
  add_dependencies(pozyx_generate_messages_nodejs imu_sequenced_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pozyx)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pozyx\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pozyx
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pozyx_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET imu_sequenced_generate_messages_py)
  add_dependencies(pozyx_generate_messages_py imu_sequenced_generate_messages_py)
endif()
