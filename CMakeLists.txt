# Minimum required CMake version
cmake_minimum_required(VERSION 3.10)

# you can ctrl-f and change every instance of "tuto" to the executable name you want for example "my_app"

# Project name and language
# you can also change "Tutorial" to your project name I am not expert in CMake but I never understood why the project name is important
project(Tutorial LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# === Dependencies ===

# Vulkan-Headers
add_subdirectory(extern/Vulkan-Headers)

# Vulkan-Loader (links to Vulkan-Headers internally)
add_subdirectory(extern/Vulkan-Loader)

# GLFW (disable examples, tests, docs for faster build)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "Disable GLFW examples")
set(GLFW_BUILD_TESTS OFF CACHE BOOL "Disable GLFW tests")
set(GLFW_BUILD_DOCS OFF CACHE BOOL "Disable GLFW docs")
add_subdirectory(extern/glfw)

# GLM (header-only — no build)
add_subdirectory(extern/glm EXCLUDE_FROM_ALL)

# === Your app ===

add_executable(tuto
    src/main.cpp
    # add your other source files here
    # you can also just doo src/*.cpp to include all .cpp files in src/
)

# Include dirs (your includes + GLM if needed explicitly)
target_include_directories(tuto PRIVATE
    # lib includes
    extern/Vulkan-Headers/include
    extern/glm
    # Your app includes
    # modify this to your actual include directory basically when inclusing anything cpp compiler will look here
    # use ${CMAKE_CURRENT_SOURCE_DIR} to refer to the root of your project
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link libraries
target_link_libraries(tuto PRIVATE
    vulkan
    glfw
)