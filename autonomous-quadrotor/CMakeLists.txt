cmake_minimum_required(VERSION 2.8.3)
project(autonomous_quadrotor)

find_package(catkin REQUIRED COMPONENTS
)

include_directories(${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})


catkin_package(
  LIBRARIES
  INCLUDE_DIRS
  DEPENDS
)

include_directories(include)
 
