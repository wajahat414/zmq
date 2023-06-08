# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(zmq_s_library VERSION 0.0.1 LANGUAGES C)

add_library(zmq_s SHARED
  "zmq_s.c"
)

set_target_properties(zmq_s PROPERTIES
  PUBLIC_HEADER zmq_s.h
  OUTPUT_NAME "zmq_s"
)

target_compile_definitions(zmq_s PUBLIC DART_SHARED_LIB)
