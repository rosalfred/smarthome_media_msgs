cmake_minimum_required(VERSION 3.5)

project(smarthome_media_msgs)

if(NOT WIN32)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra")
endif()

## Find catkin macros and libraries
find_package(ament_cmake REQUIRED)

find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(smarthome_msgs REQUIRED)

find_package(rosidl_default_generators REQUIRED)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
#catkin_python_setup()

#######################################
## Declare ROS messages and services ##
#######################################

## Generate messages in the 'msg' folder
set(msg_files
  "msg/MediaItem.msg"
  "msg/StateData.msg"
  "msg/SpeakerInfo.msg"
  "msg/MonitorInfo.msg"
  "msg/PlayerInfo.msg"
  "msg/MediaAction.msg"
  "msg/MediaType.msg"
)

## Generate services in the 'srv' folder
set(srv_files
  "srv/ToggleMuteSpeaker.srv"
  "srv/MediaGetItem.srv"
  "srv/MediaGetItems.srv"
)

## Generate added messages and services with any dependencies listed here
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES 
  builtin_interfaces
  std_msgs
  smarthome_msgs
  ADD_LINTER_TESTS
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${std_msgs_INCLUDE_DIRS}
  ${smarthome_msgs_INCLUDE_DIRS}
)

## Declare a cpp library
# add_library(media_msgs
#   src/${PROJECT_NAME}/media_msgs.cpp
# )

## Declare a cpp executable
# add_executable(media_msgs_node src/media_msgs_node.cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
#add_dependencies(media_msgs_node media_msgs_generate_messages_cpp)

## Specify libraries to link a library or executable target against
# target_link_libraries(media_msgs_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
#install(PROGRAMS
#  scripts/my_python_script
#  DESTINATION lib/${PROJECT_NAME}
#)

## Mark executables and/or libraries for installation
# install(TARGETS smarthome_msgs smarthome_msgs_node
#   ARCHIVE DESTINATION lib
#   LIBRARY DESTINATION lib
#   RUNTIME DESTINATION lib/${PROJECT_NAME}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION include/${PROJECT_NAME}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION share/${PROJECT_NAME}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# ament_add_gtest(${PROJECT_NAME}-test test/test_smarthome_msgs.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# ament_add_nosetests(test)

###################################
## ament specific configuration ##
###################################
## The ament_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## CONFIG_EXTRAS: uncomment this if you package contains argument
ament_package(
#  CONFIG_EXTRAS 
)
