# Install script for directory: /home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack

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
    set(CMAKE_INSTALL_CONFIG_NAME "release")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snowpack" TYPE FILE FILES
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Constants.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/DataClasses.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Hazard.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Laws_sn.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/MainPage.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Meteo.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Saltation.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/SnowDrift.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/SnowpackConfig.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Stability.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/StabilityAlgorithms.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/TechnicalSnow.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/Utils.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/libsnowpack.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/vanGenuchten.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snowpack/plugins" TYPE FILE FILES
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/AsciiIO.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/CaaMLIO.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/ImisDBIO.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/SmetIO.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/SnowpackIO.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/plugins/SnowpackIOInterface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snowpack/snowpackCore" TYPE FILE FILES
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/Aggregate.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/Canopy.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/Metamorphism.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/PhaseChange.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/ReSolver1d.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/SalinityTransport.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/SeaIce.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/Snowpack.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/Solver.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/VapourTransport.h"
    "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/snowpackCore/WaterTransport.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/snowpack/cmake_install.cmake")
  include("/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/applications/snowpack/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jupyter-eric/snowpackCloud/snowpack/Source/snowpack/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
