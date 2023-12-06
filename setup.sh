#!/bin/bash

print_color() {
  local color="$1"
  local text="$2"
  echo -e "\e[0;${color}m${text}\e[0m"
}

echo "------------------------------------------"
echo "Noel Engine"
echo "Alpha Build Script."
echo "------------------------------------------"

echo -n "How to name the destination directory? "
read noel_destination_path

echo "------------------------------------------"

echo -n "Cloning repository from https://github.com/worona32b/noel.."
git clone https://github.com/worona32b/noel.git --branch main "$noel_destination_path" > /dev/null 2>&1
if [[ -d "$noel_destination_path" ]]; then print_color "32" "  OK"; else print_color "31" "  ERROR"; exit 1; fi

echo -n "Downloading GLFW sources.."
wget -N https://github.com/glfw/glfw/releases/download/3.3.8/glfw-3.3.8.zip > /dev/null 2>&1
echo -e "\e[0;32m  OK\e[0m"

echo -n "Unzipping GLFW zip file.."
unzip -o glfw-3.3.8.zip > /dev/null 2>&1
if [[ -d "glfw-3.3.8" ]]; then print_color "32" "  OK"; else print_color "31" "  ERROR"; exit 1; fi

rm -rf glfw-3.3.8/build
mkdir glfw-3.3.8/build

echo -n "Building GLFW.. "
cmake -S glfw-3.3.8 -B glfw-3.3.8/build > /dev/null 2>&1
cmake --build glfw-3.3.8/build > /dev/null 2>&1
print_color "32" "  OK"

echo -n "Installing GLFW.. "
cmake --install glfw-3.3.8/build --prefix "$noel_destination_path" > /dev/null 2>&1
print_color "32" "  OK"

echo -n "Cleaning.."
rm -rf glfw-3.3.8.zip glfw-3.3.8
echo -e "\e[0;32m Done\e[0m"

print_color "32" "Script execution complete!"
