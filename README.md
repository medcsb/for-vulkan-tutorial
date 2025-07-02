# Instructions:
This is a helper setup project for anyone wanting to make a vulkan application in C++.
Everything is selfcontained you don't need to install any libraries because everything is in the extern folder.


## extern folder (Optional)
This folder contains all the libraries you need to compile a vulkan application in C++. It contains (glfw, glm, vulkan-headers, vulkan-loader)
You can also delete the extern folder and set it up yourself for security reasons or if you want the lastest versions, just find the git repos for (glfw, glm, vulkan-headers, vulkan-loader) and clone them from github in the extern folder (Basicaly what I alreasy did).

[glfw](https://github.com/glfw/glfw), [glm](https://github.com/g-truc/glm), [Vulkan-Loader](https://github.com/KhronosGroup/Vulkan-Loader) and [Vulkan-Headers](https://github.com/KhronosGroup/Vulkan-Headers)

## CMakeLists.txt

The Cmake is already set up you can open it and see what things you can change (like executable name, or project name or include paths etc...). It is commented so you can know which lines to change and which ones you should not touch.

## compile.bat and compile.sh

Sorry mac users I don't have a mac so I can't make a compile script for you, for the others these scripts are used to compile the shaders later on in the vulkan tutorial. I know there is a way to make this also selfcontained but for this one thing You need to install the Vulkan SDK (basically just a folder) and find the glslc.exe, the rest is commented in the scripts so you can know what to change.

## shaders folder

this contains the shader code you wrtie and and the copiled shaders, you can change the .bat or .sh if you want your compiled shaders to be in a different folder.

## src folder
This is where you write your C++ code, you can add more files here and include them in the CMakeLists.txt if you want to. The main.cpp file is just a template for you to start with, you can delete it and write your own code. Just remeber if you add any new folders/cpp files make sure to let Cmake know about them in the CMakeLists.txt file.

## include folder
I like to but all my .h and .hpp header files in a single include folder that way I just tell my Cmake where my include folder is and all my includes work. You can also Modify this in the CMakeLists.txt file if you want to change the include path or make your own thing.

## How to build
This will work best with Visual Studio because it has CMake support built in, but you can also use any other CMake compatible IDE or command line tool.

If you are like me (use the commandline/mingw and vscode) you can buid the project by running the following commands in the terminal:

#### For linux users:
```bash
mkdir build
cd build
cmake ..
make
```
#### For windows users (mingw):
```bash
mkdir build
cd build
cmake .. -G "MinGW Makefiles"
mingw32-make
```
and then for both run the .exe (windows) or the binary file (linux) in the build folder.

#### For Visual Studio users:
I've never used Visual Studio but I think you can just open the CMakeLists.txt file in Visual Studio and it will automatically generate the project files for you, then you can build the project from there.

#### For mac users:
I don't have a mac soooo... unlucky

## (Optional) IDE setup for intellisense
If you want to use intellisense in your IDE (the squiggly lines that tell you if you have a syntax error or not)

#### For VScode users:

you can set it up on vscode by installing the C/C++ extension and then typing "ctrl+shift+p" and then typing "C/C++: Edit Configurations (UI)" and then look for compiler path and set it to your compiler path (for example "C:/mingw/bin/g++.exe" for mingw on windows) and then look for "Include path" and add the path to your include folder + all the libs included for example :
```plaintext
${default}
${workspaceFolder}/extern/glfw/include
${workspaceFolder}/extern/glm
${workspaceFolder}/extern/Vulkan-Headers/include
${workspaceFolder}/include
```

the last one is the include folder in the root of the project, as I said that one is customizable in the CMakeLists.txt file so you can change it to whatever you want. But if you do change it here also.

#### For others:

Set it up yourselves, it should be easy to do for Visual Studio, CLion, Qt Creator, etc... just look for the C/C++ extension and set the include paths to the same as above.