# Vulkan C++ Application Starter

This is a starter project for anyone wanting to create a Vulkan application in C++. Everything is **self-contained** — no need to install external libraries manually, as all required libraries are included in the `extern/` folder.

---

## 📂 Project Structure

* **`extern/`**
  Contains all the libraries needed to compile a Vulkan application in C++:

  * [GLFW](https://github.com/glfw/glfw)

  * [GLM](https://github.com/g-truc/glm)

  * [Vulkan-Headers](https://github.com/KhronosGroup/Vulkan-Headers)

  * [Vulkan-Loader](https://github.com/KhronosGroup/Vulkan-Loader)

  > **Note:** You can delete this folder and set up these dependencies yourself (for security reasons or to get the latest versions). Simply clone the above repositories into `extern/` (which is just what I did).

---

* **`src/`**
  This is where your C++ code lives. The provided `main.cpp` is a minimal starting point — feel free to replace it. If you add new source files, don't forget to include them in the `CMakeLists.txt`.

* **`include/`**
  Place your `.h` / `.hpp` files here. This allows you to set a single include path in CMake and keep things organized. Of course you can change this but if you do you should also not forget to modify the `CmakeLists.txt`

* **`shaders/`**
  Contains shader source files and compiled shader binaries (useful later down the line in the vulkan tutorial). You can modify the `.bat` or `.sh` scripts to change output locations for compiled shaders.

* **`CMakeLists.txt`**
  The build configuration. It's already set up for you, but you can customize the project name, executable name, include paths, etc. Comments in the file will guide you.

* **`compile.bat` / `compile.sh`**
  Scripts for compiling shaders. These require the Vulkan SDK (for `glslc.exe` or `glslc`). You'll need to adjust these scripts with the path to your Vulkan SDK.
  No script for Mac users sorry...

---

## ⚙️ How to Build

### 🛠 Command-line / Terminal

#### On Linux:

```bash
mkdir build
cd build
cmake ..
make
./executable_name
```

#### On Windows (with MinGW):

```bash
mkdir build
cd build
cmake .. -G "MinGW Makefiles"
mingw32-make
executable_name.exe
```

After building, you'll find the executable in the `build/` directory. The executable_name is just tuto but you can change this easily in the `CMakeLists.txt` file.

---

### 🛠 Using an IDE

#### Visual Studio:

You can open the `CMakeLists.txt` file directly in Visual Studio. It should automatically configure the project, and you can build it from within the IDE.

#### VSCode:

You can build using:

* The **CMake Tools** extension — click *Build* from the status bar or use the command palette.
* The command-line instructions above, if you prefer the terminal.

---

## 💡 (Optional) Setting Up Intellisense (VSCode)

For better code completion and error highlighting:

1️⃣ Install the **C/C++ extension** for VSCode.

2️⃣ Open the command palette (`Ctrl+Shift+P`), search for:

```
C/C++: Edit Configurations (UI)
```

3️⃣ In the configuration UI:

* **Compiler path:** Set this to your compiler (e.g. `C:/mingw/bin/g++.exe` for MinGW on Windows).
* **Include path:** Add the following:

```plaintext
${default}
${workspaceFolder}/extern/glfw/include
${workspaceFolder}/extern/glm
${workspaceFolder}/extern/Vulkan-Headers/include
${workspaceFolder}/include
```

If you change the include folder in `CMakeLists.txt`, remember to update it here too.

---

## 💡 (Optional) Setting Up Intellisense (Other IDEs)

Good luck!

## ⛔ Notes for Mac Users

Currently, no compile scripts or specific instructions are provided for macOS. However, you can set it up similarly by cloning the dependencies and adjusting the build process as needed. If any mac users are kind enough to update this and do a pull request I'll gladly pull it for future users.
