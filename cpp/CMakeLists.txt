cmake_minimum_required(VERSION 3.10)
project(Demo VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(HEAD_PATH ${PROJECT_SOURCE_DIR}/include)
set(LIB_PATH ${PROJECT_SOURCE_DIR}/lib)
set(EXE_PATH ${PROJECT_SOURCE_DIR}/bin)

set(EXECUTABLE_OUTPUT_PATH ${EXE_PATH})

add_subdirectory(${PROJECT_SOURCE_DIR}/MString)

include_directories(${HEAD_PATH})

link_directories(${LIB_PATH})

aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
add_executable(${PROJECT_NAME} ${SRC})

target_link_libraries(
    ${PROJECT_NAME}
    PUBLIC mstring
    )

#set(CMAKE_BUILD_TYPE "Debug")
#set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
#set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
