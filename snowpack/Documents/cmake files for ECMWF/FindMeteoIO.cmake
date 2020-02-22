INCLUDE(LibFindMacros)

# Finally the library itself
GET_FILENAME_COMPONENT(SRC_DIR ${CMAKE_SOURCE_DIR} PATH) #ie goes up one level
STRING(REPLACE " " "\\ " SRC_DIR ${SRC_DIR})

IF(WIN32)
	GET_FILENAME_COMPONENT(METEOIO_ROOT1 "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\MeteoIO;UninstallString]" PATH CACHE INTERNAL)
	GET_FILENAME_COMPONENT(METEOIO_ROOT2 "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\MeteoIO;UninstallString]" PATH CACHE INTERNAL)
	GET_FILENAME_COMPONENT(METEOIO_ROOT3 "[HKEY_LOCAL_MACHINE\\SOFTWARE\\WSL Institute for Snow and Avalanche Research\\MeteoIO]" ABSOLUTE CACHE INTERNAL)
	GET_FILENAME_COMPONENT(METEOIO_ROOT4 "C:/Progra~1/MeteoI*" ABSOLUTE CACHE INTERNAL)
	SET(SEARCH_PATH
		ENV LIB
		${SRC_DIR}/meteoio/lib
		${SRC_DIR}/../../meteoio/lib
		${METEOIO_ROOT1}/lib
		${METEOIO_ROOT2}/lib
		${METEOIO_ROOT3}/lib
		${METEOIO_ROOT4}/lib)
	IF(MSVC)
		FIND_LIBRARY(METEOIO_LIBRARY
			NAMES libmeteoio.lib
			PATHS ${SEARCH_PATH}
			DOC "Location of the libmeteoio, like c:/Program Files/MeteoIO-2.4.0/lib/libmeteoio.lib"
			)
	ELSE(MSVC)
		FIND_LIBRARY(METEOIO_LIBRARY
			NAMES libmeteoio.dll.a
			PATHS ${SEARCH_PATH}
			DOC "Location of the libmeteoio, like c:/Program Files/MeteoIO-2.4.0/lib/libmeteoio.dll.a"
			)
	ENDIF(MSVC)
ELSE(WIN32)
	IF(APPLE)
		FIND_LIBRARY(METEOIO_LIBRARY
		NAMES meteoio
		PATHS
			ENV LD_LIBRARY_PATH
			ENV DYLD_FALLBACK_LIBRARY_PATH
			${SRC_DIR}/meteoio/lib
			${SRC_DIR}/../../meteoio/lib
			"~/usr/lib"
			"/Applications/MeteoIO/lib"
			"/usr/local/lib"
			"/usr/lib"
			"/opt/lib"
		DOC "Location of the libmeteoio, like /usr/lib/libmeteoio.dylib"
		)
	ELSE(APPLE)
		FIND_LIBRARY(METEOIO_LIBRARY
		NAMES meteoio
		PATHS
			ENV LD_LIBRARY_PATH
			${SRC_DIR}/meteoio/lib
			${SRC_DIR}/../../meteoio/lib
			"~/usr/lib"
			"/usr/local/lib"
			"/usr/lib"
			"/opt/lib"
		DOC "Location of the libmeteoio, like /usr/lib/libmeteoio.so"
		)
	ENDIF(APPLE)
ENDIF(WIN32)

#build METEOIO_ROOT so we can provide a hint for searching for the header file
GET_FILENAME_COMPONENT(meteoio_libs_root ${METEOIO_LIBRARY} PATH)
#IF(${CMAKE_VERSION} VERSION_GREATER "2.8.11")
#	GET_FILENAME_COMPONENT(METEOIO_ROOT ${meteoio_libs_root} DIRECTORY)
#ELSE(${CMAKE_VERSION} VERSION_GREATER "2.8.11")
	SET(METEOIO_ROOT "${meteoio_libs_root}/../")
	STRING(REPLACE  " " "\\ " METEOIO_ROOT ${METEOIO_ROOT})
#ENDIF(${CMAKE_VERSION} VERSION_GREATER "2.8.11")

# locate main header file
FIND_PATH(METEOIO_INCLUDE_DIR
  NAMES meteoio/MeteoIO.h
  #HINTS ${METEOIO_ROOT}/include
  PATHS
	"${METEOIO_ROOT}/include"
	"${METEOIO_ROOT}"
	"~/usr/include"
	"/usr/local/include"
	"/usr/include"
	"/opt/include"
  DOC "Location of the meteoio headers, like /usr/include"
)

# Set the include dir variables and the libraries and let libfind_process do the rest.
# NOTE: Singular variables for this library, plural for libraries this this lib depends on.
SET(METEOIO_PROCESS_INCLUDES METEOIO_INCLUDE_DIR)
SET(METEOIO_PROCESS_LIBS METEOIO_LIBRARY)
libfind_process(METEOIO)
