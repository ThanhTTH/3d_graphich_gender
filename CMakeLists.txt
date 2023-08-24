cmake_minimum_required(VERSION 3.10)
project(example)
set(CMAKE_INSTALL_RPATH "./")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)


# 
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
set(GLFW_ROOT ${CMAKE_SOURCE_DIR}/3rd-party/glfw)
set(GLAD_ROOT ${CMAKE_SOURCE_DIR}/3rd-party/glad)
set(IMGUI_ROOT ${CMAKE_SOURCE_DIR}/3rd-party/imgui)

# set(glm_DIR <installation prefix>/lib/cmake/glm) # if necessary
# find_package(glm REQUIRED)
include_directories(${CMAKE_SOURCE_DIR}/submodules/glm/glm)

add_subdirectory(example2)
