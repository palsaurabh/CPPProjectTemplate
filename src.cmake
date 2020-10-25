cmake_minimum_required(VERSION 3.19.0)

set(EXAMPLELIB ExampleLib)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src EXAMPLELIBSRC)

add_library(${EXAMPLELIB} STATIC ${EXAMPLELIBSRC})

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/Example.h
     DESTINATION ${CMAKE_INCLUDE_OUTPUT_DIRECTORY})

set(CMAKE_POSITION_INDEPENDENT_CODE OFF)