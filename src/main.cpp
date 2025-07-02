#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
// defining GLFW_INCLUDE_VULKAN before including GLFW will make sure that the Vulkan headers are included correctly
#include <iostream>
#include <stdexcept>
#include <cstdlib>

#include "includeExample.hpp"


int main() {
    // Initialize GLFW
    if (!glfwInit()) {
        throw std::runtime_error("Failed to initialize GLFW");
    }

    // Set GLFW to use Vulkan
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

    // Create a windowed mode window and its OpenGL context
    GLFWwindow* window = glfwCreateWindow(800, 600, "Vulkan Window", nullptr, nullptr);
    if (!window) {
        glfwTerminate();
        throw std::runtime_error("Failed to create GLFW window");
    }

    // Call the example function from the included header
    exampleFunction();

    // Main loop
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();
    }

    // Cleanup
    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}
