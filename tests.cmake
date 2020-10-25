cmake_minimum_required(VERSION 3.19.0)

set(EXAMPLELIBTESTS ExampleTests)
set(GOOGLETEST_DIR E:/Learning/googleTestInstall/)

link_directories(
    ${GOOGLETEST_DIR}/lib
    ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}   
    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}   
)

include_directories(
    ${GOOGLETEST_DIR}/include
)

aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/test EXAMPLELIBTESTSRC)

add_executable(${EXAMPLELIBTESTS} ${EXAMPLELIBTESTSRC})

target_link_libraries(${EXAMPLELIBTESTS} PUBLIC
    gtest_main
    gtest
    ExampleLib
    )

add_test(
    NAME ${EXAMPLELIBTESTS}
    COMMAND ${EXAMPLELIBTESTS}
)