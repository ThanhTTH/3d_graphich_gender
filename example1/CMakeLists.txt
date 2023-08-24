cmake_minimum_required(VERSION 3.10)
project(example1)
# 
list(APPEND SENDER_SRC ${CMAKE_CURRENT_SOURCE_DIR}/example1.cpp)
# 
if(POLICY CMP0074)
  cmake_policy(SET CMP0074 NEW)
endif()
find_package(GLAD REQUIRED)
find_package(GLFW REQUIRED)
add_executable(${PROJECT_NAME} ${SENDER_SRC})
# 
target_link_libraries(${PROJECT_NAME} PRIVATE ${GLAD_LIBRARIES} ${GLFW_LIBRARIES} ${CMAKE_DL_LIBS} -lX11 pthread)
target_include_directories(${PROJECT_NAME} PUBLIC ${GLFW_INCLUDE_DIR}
                                                ${GLAD_INCLUDE_DIR}
)