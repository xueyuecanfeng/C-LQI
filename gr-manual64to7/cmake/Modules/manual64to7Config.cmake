INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_MANUAL64TO7 manual64to7)

FIND_PATH(
    MANUAL64TO7_INCLUDE_DIRS
    NAMES manual64to7/api.h
    HINTS $ENV{MANUAL64TO7_DIR}/include
        ${PC_MANUAL64TO7_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    MANUAL64TO7_LIBRARIES
    NAMES gnuradio-manual64to7
    HINTS $ENV{MANUAL64TO7_DIR}/lib
        ${PC_MANUAL64TO7_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MANUAL64TO7 DEFAULT_MSG MANUAL64TO7_LIBRARIES MANUAL64TO7_INCLUDE_DIRS)
MARK_AS_ADVANCED(MANUAL64TO7_LIBRARIES MANUAL64TO7_INCLUDE_DIRS)

