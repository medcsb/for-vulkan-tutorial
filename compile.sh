/home/user/VulkanSDK/x.x.x.x/x86_64/bin/glslc shaders/shader.vert -o shaders/build/vert.spv
/home/user/VulkanSDK/x.x.x.x/x86_64/bin/glslc shaders/shader.frag -o shaders/build/frag.spv

# This file is for linux users in place of the .bat file
# Make sure to change the path to glslc if you installed Vulkan SDK in a different location
# You can also change the path to the shaders if you want to put them in a different folder
# Or maybe your shaders are named differently
# general format is:
# /home/user/VulkanSDK/x.x.x.x/x86_64/bin/glslc shaders/myshader.something -o shaders/build/myshader.spv