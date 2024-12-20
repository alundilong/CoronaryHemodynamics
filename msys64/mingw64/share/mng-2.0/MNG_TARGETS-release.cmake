#----------------------------------------------------------------
# Generated CMake target import file for configuration "RELEASE".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mng" for configuration "RELEASE"
set_property(TARGET mng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mng PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "C:/msys/x86_64/mingw64/lib/libjpeg.dll.a;C:/msys/x86_64/mingw64/lib/libz.dll.a;C:/msys/x86_64/mingw64/lib/liblcms2.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libmng.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS mng )
list(APPEND _IMPORT_CHECK_FILES_FOR_mng "${_IMPORT_PREFIX}/lib/libmng.a" )

# Import target "mng-shared" for configuration "RELEASE"
set_property(TARGET mng-shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mng-shared PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libmng.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "C:/msys/x86_64/mingw64/lib/libjpeg.dll.a;C:/msys/x86_64/mingw64/lib/libz.dll.a;C:/msys/x86_64/mingw64/lib/liblcms2.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libmng-2.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS mng-shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_mng-shared "${_IMPORT_PREFIX}/lib/libmng.dll.a" "${_IMPORT_PREFIX}/bin/libmng-2.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
