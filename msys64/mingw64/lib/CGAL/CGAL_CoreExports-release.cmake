#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CGAL::CGAL_Core" for configuration "Release"
set_property(TARGET CGAL::CGAL_Core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CGAL::CGAL_Core PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libCGAL_Core.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "C:/building/msys64/mingw64/lib/libmpfr.a;C:/building/msys64/mingw64/lib/libgmp.dll.a;CGAL::CGAL;C:/building/msys64/mingw64/lib/libboost_thread-mt.dll.a;C:/building/msys64/mingw64/lib/libboost_system-mt.dll.a;C:/building/msys64/mingw64/lib/libboost_chrono-mt.dll.a;C:/building/msys64/mingw64/lib/libboost_date_time-mt.dll.a;C:/building/msys64/mingw64/lib/libboost_atomic-mt.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libCGAL_Core.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS CGAL::CGAL_Core )
list(APPEND _IMPORT_CHECK_FILES_FOR_CGAL::CGAL_Core "${_IMPORT_PREFIX}/lib/libCGAL_Core.dll.a" "${_IMPORT_PREFIX}/bin/libCGAL_Core.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
