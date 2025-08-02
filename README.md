# XIT Workspace

This is the main workspace for the XIT library ecosystem - a modular C++ graphics and utility library framework built on OpenGL. The workspace contains multiple interconnected submodules that provide comprehensive functionality for GUI applications, system utilities, and cross-platform development.

## Overview

XIT is a C++ library designed to provide:
- Cross-platform graphical user interface framework based on OpenGL
- Modular architecture allowing selective component usage
- API similar to C# .NET framework for ease of use
- Support for everything from console applications to full GUI applications

## Submodules

This workspace consists of the following submodules:

- **xit**: Core library with basic system utilities, events, and math helpers
- **xit.Drawing**: OpenGL-based rendering engine and UI components  
- **xit.Window**: Window management and GLFW integration **(not working yet. Use xit.Drawing Window instead)**
- **xit.Input**: Keyboard and mouse input handling using GLFW
- **xit.IO**: File system operations and path utilities
- **xit.Application**: Application lifecycle and configuration management
- **xit.Account**: User account and authentication management
- **xit.Security**: Encryption, decryption, and hashing utilities (OpenSSL-based)
- **xit.Threading**: Thread management and synchronization
- **xit.Timers**: Timer and scheduling functionality
- **xit.Clipboard**: System clipboard integration using GLFW

## Prerequisites

Before building the XIT workspace, ensure you have the following dependencies installed:

### Required Tools
- **xmake**: Build system (required for compilation) **this is not xmake.io see link below**
- **Git**: For cloning submodules
- **C++ Compiler**: Supporting C++17 or later (GCC, Clang, or MSVC)

### System Dependencies
- **OpenGL**: Graphics library
- **GLFW**: Window and context management
- **OpenSSL**: Cryptographic functions (for xit.Security)
- **Additional dependencies**: Automatically handled by individual submodule dependency scripts

## Installation

### 1. Clone the Repository

```bash
git clone --recursive https://github.com/xit303/xitWorkspace.git
cd xitWorkspace
```

If you've already cloned without `--recursive`, initialize the submodules:

```bash
git submodule update --init --recursive
```

### 2. Install Dependencies

Run the dependency installation script to set up all required libraries for all submodules:

```bash
./install_deps.sh
```

This script will automatically:
- Install dependencies for each submodule
- Set up required third-party libraries (ArduinoJson, glad, glm, etc.)
- Configure the build environment

### 3. Build the Project

Choose between Debug and Release builds:

#### Debug Build
```bash
./build_debug.sh
```

#### Release Build  
```bash
./build_release.sh
```

The build process follows dependency order:
1. xit (core library)
2. xit.Timers
3. xit.IO
4. xit.Input
5. xit.Clipboard
6. xit.Security
7. xit.Threading
8. xit.Application
9. xit.Account
10. xit.Window
11. xit.Drawing

### 4. Install Libraries (Optional)

To install the built libraries to system directories:

#### Debug Installation
```bash
./install_debug.sh
```

#### Release Installation
```bash
./install_release.sh
```

## Cleaning Build Files

To clean build artifacts:

#### Clean Debug Build
```bash
./clean_debug.sh
```

#### Clean Release Build
```bash
./clean_release.sh
```

## Usage

### Modular Approach
The XIT library is designed for modular usage. You can:
- Use individual components as needed **but keep library dependencies in mind as shown above**
- Include only specific headers for lightweight applications
- Build complete GUI applications using the full framework

### Example Integration
```cpp
#include "Application/Application.h"
#include "Drawing/Window.h"
#include "Input/Input.h"

// Your application code here
```

### Library Linking
After installation, link against the required XIT libraries in your projects:
```bash
-lxit -lxit.Drawing -lxit.Window # etc.
```

## Project Structure

```
xitWorkspace/
├── build_debug.sh          # Debug build script
├── build_release.sh        # Release build script  
├── clean_debug.sh          # Clean debug artifacts
├── clean_release.sh        # Clean release artifacts
├── install_debug.sh        # Install debug libraries
├── install_release.sh      # Install release libraries
├── install_deps.sh         # Install all dependencies
├── .gitmodules             # Submodule configuration
└── [submodule directories] # Individual XIT components
```

Each submodule contains:
- `include/`: Header files
- `src/`: Source code
- `lib/`: Third-party dependencies
- `test/`: Unit tests
- `xmakefile.json`: Build configuration
- `README.md`: Component-specific documentation

## Development

### Building Individual Components
You can build individual submodules using xmake directly:

```bash
cd xit.Drawing
xmake xmakefile.json --config Debug
```

### Running Tests
Each submodule may include tests that can be built and run separately. Check individual submodule README files for testing instructions.

### Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Troubleshooting

### Common Issues

1. **Missing xmake**: Install xmake from [here](https://github.com/xit303/xmake.git)
2. **OpenGL errors**: Ensure proper graphics drivers are installed
3. **Dependency issues**: Run `./install_deps.sh` to reinstall dependencies
4. **Build failures**: Check that submodules are properly initialized

### Getting Help

- Check individual submodule README files for component-specific issues
- Review build logs for detailed error messages
- Ensure all prerequisites are properly installed

## License

See individual submodule repositories for license information.

## Contact

For questions, suggestions, or contributions, please create an issue in the relevant repository or contact the maintainers.
