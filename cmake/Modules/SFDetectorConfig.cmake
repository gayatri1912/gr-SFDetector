INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_SFDETECTOR SFDetector)

FIND_PATH(
    SFDETECTOR_INCLUDE_DIRS
    NAMES SFDetector/api.h
    HINTS $ENV{SFDETECTOR_DIR}/include
        ${PC_SFDETECTOR_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    SFDETECTOR_LIBRARIES
    NAMES gnuradio-SFDetector
    HINTS $ENV{SFDETECTOR_DIR}/lib
        ${PC_SFDETECTOR_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SFDETECTOR DEFAULT_MSG SFDETECTOR_LIBRARIES SFDETECTOR_INCLUDE_DIRS)
MARK_AS_ADVANCED(SFDETECTOR_LIBRARIES SFDETECTOR_INCLUDE_DIRS)

