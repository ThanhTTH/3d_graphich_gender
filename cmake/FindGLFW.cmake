set(GLFW_INCLUDE_DIR "")
set(GLFW_LIBRARY_DIR "")
set(GLFW_LIBRARIES "")
cmake_policy(SET CMP0074 NEW)
# 
set(GLFW_INCLUDE_DIR 
    ${GLFW_ROOT}/include
)
# 
set(GLFW_LIBRARY_DIR
    ${GLFW_ROOT}/lib
)
# 
add_library(glfw STATIC IMPORTED)

set_target_properties(glfw PROPERTIES IMPORTED_LOCATION
                  ${GLFW_LIBRARY_DIR}/libglfw3.a)

set(GLFW_LIBRARIES
    glfw
)
