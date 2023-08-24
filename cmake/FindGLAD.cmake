set(GLAD_INCLUDE_DIR "")
set(GLAD_LIBRARY_DIR "")
set(GLAD_LIBRARIES "")
cmake_policy(SET CMP0074 NEW)
set(GLAD_INCLUDE_DIR 
    ${GLAD_ROOT}/include
)

set(GLAD_LIBRARY_DIR
    ${GLAD_ROOT}/lib
)

add_library(glad STATIC IMPORTED)

set_target_properties(glad PROPERTIES IMPORTED_LOCATION
                  ${GLAD_LIBRARY_DIR}/libglad.a)

set(GLAD_LIBRARIES
    glad
)
