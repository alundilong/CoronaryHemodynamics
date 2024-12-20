#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CGAL::CGAL_Qt5" for configuration "Release"
set_property(TARGET CGAL::CGAL_Qt5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CGAL::CGAL_Qt5 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libCGAL_Qt5.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "C:/building/msys64/mingw64/lib/libmpfr.a;C:/building/msys64/mingw64/lib/libgmp.dll.a;Qt5::OpenGL;Qt5::Svg;CGAL::CGAL;glu32;opengl32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libCGAL_Qt5.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS CGAL::CGAL_Qt5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_CGAL::CGAL_Qt5 "${_IMPORT_PREFIX}/lib/libCGAL_Qt5.dll.a" "${_IMPORT_PREFIX}/bin/libCGAL_Qt5.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
