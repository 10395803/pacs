cmake_minimum_required (VERSION 2.6)
project (Hellomake)

include_directories ("${PROJECT_SOURCE_DIR}/include")
add_subdirectory (src)
set (EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)


# add the executable
add_executable (Hellomake tutorial.cxx)
target_link_libraries (Tutorial  ${EXTRA_LIBS})
