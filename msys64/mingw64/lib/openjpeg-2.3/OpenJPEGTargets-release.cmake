#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "openjp2" for configuration "Release"
set_property(TARGET openjp2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(openjp2 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libopenjp2.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libopenjp2-7.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS openjp2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_openjp2 "${_IMPORT_PREFIX}/lib/libopenjp2.dll.a" "${_IMPORT_PREFIX}/bin/libopenjp2-7.dll" )

# Import target "openjpwl" for configuration "Release"
set_property(TARGET openjpwl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(openjpwl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libopenjpwl.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libopenjpwl-7.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS openjpwl )
list(APPEND _IMPORT_CHECK_FILES_FOR_openjpwl "${_IMPORT_PREFIX}/lib/libopenjpwl.dll.a" "${_IMPORT_PREFIX}/bin/libopenjpwl-7.dll" )

# Import target "openjpip" for configuration "Release"
set_property(TARGET openjpip APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(openjpip PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libopenjpip.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "openjp2;ws2_32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libopenjpip-7.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS openjpip )
list(APPEND _IMPORT_CHECK_FILES_FOR_openjpip "${_IMPORT_PREFIX}/lib/libopenjpip.dll.a" "${_IMPORT_PREFIX}/bin/libopenjpip-7.dll" )

# Import target "opj_decompress" for configuration "Release"
set_property(TARGET opj_decompress APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_decompress PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_decompress.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_decompress )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_decompress "${_IMPORT_PREFIX}/bin/opj_decompress.exe" )

# Import target "opj_compress" for configuration "Release"
set_property(TARGET opj_compress APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_compress PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_compress.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_compress )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_compress "${_IMPORT_PREFIX}/bin/opj_compress.exe" )

# Import target "opj_dump" for configuration "Release"
set_property(TARGET opj_dump APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_dump PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_dump.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_dump )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_dump "${_IMPORT_PREFIX}/bin/opj_dump.exe" )

# Import target "opj_jpip_addxml" for configuration "Release"
set_property(TARGET opj_jpip_addxml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_jpip_addxml PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_jpip_addxml.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_jpip_addxml )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_jpip_addxml "${_IMPORT_PREFIX}/bin/opj_jpip_addxml.exe" )

# Import target "opj_dec_server" for configuration "Release"
set_property(TARGET opj_dec_server APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_dec_server PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_dec_server.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_dec_server )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_dec_server "${_IMPORT_PREFIX}/bin/opj_dec_server.exe" )

# Import target "opj_jpip_transcode" for configuration "Release"
set_property(TARGET opj_jpip_transcode APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_jpip_transcode PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_jpip_transcode.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_jpip_transcode )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_jpip_transcode "${_IMPORT_PREFIX}/bin/opj_jpip_transcode.exe" )

# Import target "opj_jpip_test" for configuration "Release"
set_property(TARGET opj_jpip_test APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opj_jpip_test PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/opj_jpip_test.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS opj_jpip_test )
list(APPEND _IMPORT_CHECK_FILES_FOR_opj_jpip_test "${_IMPORT_PREFIX}/bin/opj_jpip_test.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
