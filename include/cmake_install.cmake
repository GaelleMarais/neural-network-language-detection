# Install script for directory: /home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/doublefann.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_internal.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/floatfann.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_data.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fixedfann.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/compat_time.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_activation.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_cascade.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_error.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_train.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_io.h"
    "/home/billy/Documents/M2 Gamagora/neural-network-tmp/FANN-2.2.0-Source/src/include/fann_cpp.h"
    )
endif()

