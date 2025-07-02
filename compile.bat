C:/VulkanSDK/1.4.313.2/Bin/glslc.exe shaders/shader.vert -o shaders/vert.spv
C:/VulkanSDK/1.4.313.2/Bin/glslc.exe shaders/shader.frag -o shaders/frag.spv
pause

REM In this bat file you have to change the path to glslc.exe if you installed Vulkan SDK in a different location
REM Or if your instalation has a different version mine has 1.4.313.2
REM You can also change the path to the shaders if you want to put them in a different folder
REM Or maybe your shaders are named differently
REM general format is:
REM C:/path/to/VulkanSDK/glslc.exe path/to/shaders/myshader.something -o path/to/built/shaders/myshader.spv