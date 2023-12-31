# Clonning Noel from GitHub repository
git clone https://github.com/worona32b/noel.git --branch main

# Downloading GLFW sources from GitHub
Invoke-WebRequest -Uri "https://github.com/glfw/glfw/releases/download/3.3.8/glfw-3.3.8.zip" -OutFile "glfw-3.3.8.zip"
& "C:\Program Files\WinRAR\WinRAR.exe" x -ibck "glfw-3.3.8.zip"

cmake -S glfw-3.3.8 -B glfw-3.3.8/build
cmake --build glfw-3.3.8/build

# Installing GLFW to Noel
cmake --install glfw-3.3.8/build --prefix ./noel/

