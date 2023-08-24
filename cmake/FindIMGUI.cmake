set(IMGUI_INCLUDE_DIR "")
set(IMGUI_LIBRARY_DIR "")
set(IMGUI_LIBRARIES "")
if (POLICY CMP0074)
    cmake_policy(SET CMP0074 NEW)
endif()
# 
set(IMGUI_INCLUDE_DIR ${IMGUI_ROOT}/include)
set(IMGUI_LIBRARY_DIR ${IMGUI_ROOT}/lib)
# 
add_library(imgui SHARE IMPORTED)
# 
set_target_properties(
    imgui PROPERTIES IMPORTED_LOCATION
    ${IMGUI_LIBRATY_DIR}/libimgui.a
)
# 
set(IMGUI_LIBARIES imgui)

