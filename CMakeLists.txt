cmake_minimum_required(VERSION 3.15.1)

project(SwiftCertificates
  LANGUAGES Swift)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules)

include(SwiftSupport)

if(CMAKE_VERSION VERSION_LESS 3.16 AND CMAKE_SYSTEM_NAME STREQUAL Windows)
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
else()
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
endif()
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_Swift_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/swift)

option(BUILD_SHARED_LIBS "Build shared libraries by default" YES)

if(BUILD_SHARED_LIBS)
  set(CMAKE_POSITION_INDEPENDENT_CODE YES)
endif()

if(NOT CMAKE_SYSTEM_NAME STREQUAL Darwin)
  find_package(dispatch CONFIG)
  find_package(Foundation CONFIG)
endif()

find_package(SwiftASN1 CONFIG REQUIRED)
find_package(SwiftCrypto CONFIG REQUIRED)

add_subdirectory(Sources)
add_subdirectory(cmake/modules)

