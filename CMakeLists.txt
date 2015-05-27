cmake_minimum_required(VERSION 3.2)
project(SuperFLow_CLion)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c1x -Wall -g -O3")


set(SYS_INCDIR "/opt/local/include")
set(SYS_LIBDIR "/opt/local/lib")

set(INCDIR ${SYS_INCDIR} "include")
set(LIBDIR ${SYS_LIBDIR} "lib")

file(GLOB LIBSRC lib/*.c)
file(GLOB LIBHEADER include/*.h)

include_directories(${INCDIR})
link_directories(${LIBDIR})

add_executable(deepflow src/deepflow.c ${LIBSRC})
target_link_libraries(deepflow m jpeg png)




