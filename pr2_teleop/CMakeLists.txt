cmake_minimum_required(VERSION 2.8.3)
project(pr2_teleop)

if(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

find_package(catkin REQUIRED COMPONENTS
  moveit_core
  pluginlib
  actionlib
  roscpp
  trajectory_msgs
  actionlib_msgs)

include_directories(include ${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})

catkin_package(
  LIBRARIES
  INCLUDE_DIRS
  DEPENDS
    )

include_directories(include)

add_executable(teleop_pr2_keyboard src/teleop_pr2_keyboard.cpp)
target_link_libraries(teleop_pr2_keyboard ${catkin_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
add_executable(teleop_pr2 src/teleop_pr2.cpp)
target_link_libraries(teleop_pr2 ${catkin_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
add_executable(teleop_gripper src/teleop_gripper.cpp)
target_link_libraries(teleop_gripper ${catkin_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
add_executable(controller src/teleop_pr2_keyboard_modificato.cpp)
target_link_libraries(controller ${catkin_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
