cmake_minimum_required(VERSION 3.12)
project(Noel)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_INCLUDE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/include)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build)

add_link_options("-nostartfiles")
add_link_options("-estart")

file(GLOB SOURCES "src/**/*.cpp")

add_executable(app ${SOURCES})

# find_package(glfw3 CONFIG REQUIRED)
# target_link_libraries(app PRIVATE glfw)

find_library(GLFW_LIBRARY glfw3 HINTS "lib")
target_link_libraries(app PRIVATE ${GLFW_LIBRARY})

include_directories(${CMAKE_SOURCE_DIR}/include)


# find_package(OpenGL REQUIRED)
# target_link_libraries(app PRIVATE ${OPENGL_LIBRARIES})

