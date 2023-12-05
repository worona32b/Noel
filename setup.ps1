# Clonning Noel from GitHub repository
git clone https://github.com/worona32b/noel.git --branch main

# Downloading GLFW sources from GitHub
Invoke-WebRequest -Uri "https://github.com/glfw/glfw/releases/download/3.3.8/glfw-3.3.8.zip" -OutFile "glfw-3.3.8.zip"
& "C:\Program Files\WinRAR\WinRAR.exe" x -ibck "glfw-3.3.8.zip"
cd glfw-3.3.8

# Building GLFW to build/ directory
cmake -S . -B build
cmake --build build

# Installing GLFW to Noel
cmake --install build --prefix ../noel

cd ../noel

# Building Noel
cmake ..
cmake --build .
