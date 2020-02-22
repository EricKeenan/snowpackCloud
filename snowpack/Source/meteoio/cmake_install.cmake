# Install script for directory: /home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/Config.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/DataCreator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/DataGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/FileUtils.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/Graphics.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/GridsManager.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/IOExceptions.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/IOHandler.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/IOInterface.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/IOManager.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/IOUtils.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/MainPage.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/MathOptim.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/MessageBoxX11.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/Meteo1DInterpolator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/Meteo2DInterpolator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/MeteoIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/MeteoProcessor.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/TimeSeriesManager.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/Timer.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/tinyexpr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/dataClasses" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Array1D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Array2D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Array3D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Array4D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Buffer.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Coords.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/CoordsAlgorithms.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/DEMAlgorithms.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/DEMObject.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Date.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Grid2DObject.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Grid3DObject.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/Matrix.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/MeteoData.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/StationData.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/dataGenerators" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/AllSkyLWGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/AllSkySWGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/ClearSkyLWGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/ClearSkySWGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/ConstGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/ESOLIPGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/GeneratorAlgorithms.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/HumidityGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/IswrAlbedoGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/PrecSplitting.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/RadiationComponents.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/SinGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/StdPressGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/TauCLDGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/TsGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/WindComponents.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/template.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/meteoResampling" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/Accumulate.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/DailyAverageResampling.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/DailySolarResampling.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/LinearResampling.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/NearestNeighbour.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/NoResampling.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/ResamplingAlgorithms.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/SolarResampling.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/template.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/spatialInterpolations" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ALSScaleAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/AvgAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/AvgLapseAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ConstAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/IDWAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/IDWLapseAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/IDWLapseLocalAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/IDWSlopesAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ILWREpsAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/InterpolationAlgorithms.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ListonWindAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/NearestNeighbourAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/NoneAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ODKrigAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/ODKrigLapseAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/PPhaseAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/RHListonAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/RyanWindAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/SnowPsumAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/StdPressAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/SwRadAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/UserAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/WinstralAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/WinstralListonAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/WinstralListonDriftAlgorithm.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/template.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/plugins" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/A3DIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/ALPUG.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/ARCIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/ARPSIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/Argos.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/BormaIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/CosmoXMLIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/CsvIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/DBO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/GRIBIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/GSNIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/GeotopIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/Goes.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/GrassIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/ImisIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/NetCDFIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/OshdIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/PGMIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/PNGIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/PSQLIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/PmodIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/SASEIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/SMETIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/SNIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/ZRXPIO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/exports.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/libMatioWrapper.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/libncpp.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/libsmet.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/picojson.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/template.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/meteoLaws" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoLaws/Atmosphere.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoLaws/Meteoconst.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoLaws/Sun.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoLaws/Suntrajectory.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/meteoFilters" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterBlock.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterDeGrass.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterDespikingPS.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterKalman.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMAD.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMaths.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMax.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMin.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMinMax.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterMinMaxConditional.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterNoChange.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterParticle.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterPotentialSW.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterRate.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterStdDev.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterSuppr.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterTimeconsistency.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterTukey.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/FilterUnheatedPSUM.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcAdd.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcAggregate.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcDeAccumulate.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcExpSmoothing.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcIIR.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcMult.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcPSUMDistribute.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcQuantileMapping.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcRHWaterToIce.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcShade.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcUndercatch_Forland.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcUndercatch_Hamon.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcUndercatch_WMO.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcUnventilatedT.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcWMASmoothing.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcessingBlock.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/ProcessingStack.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/TimeFilters.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/WindowedFilter.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/template.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/meteoio/meteoStats" TYPE FILE FILES
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/RandomNumberGenerator.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/libfit1D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/libfit1DCore.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/libinterpol1D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/libinterpol2D.h"
    "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoStats/libresampling2D.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataClasses/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/dataGenerators/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/plugins/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoLaws/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoFilters/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/meteoResampling/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/spatialInterpolations/cmake_install.cmake")
  include("/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/meteoio/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jupyter-eric/SNOWPACK_in_the_cloud/snowpack/Source/meteoio/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
