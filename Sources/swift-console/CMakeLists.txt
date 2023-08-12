add_library(SwiftX509
  "main.swift")

target_link_libraries(SwiftX509 PUBLIC
  $<$<NOT:$<PLATFORM_ID:Darwin>>:dispatch>
  $<$<NOT:$<PLATFORM_ID:Darwin>>:Foundation>)
set_target_properties(SwiftASN1 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})

_install_target(SwiftX509)
set_property(GLOBAL APPEND PROPERTY SWIFT_ASN1_EXPORTS SwiftASN1)
