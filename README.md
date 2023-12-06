# Noel Game Engine

Noel is a lightweight and user-friendly engine for creating 2D games. Developed in C++ and partially in Assembly, it provides an exceptionally simple API for beginners and includes several useful scripts to automate tasks that might be challenging for newcomers.

## Contents

1. [Requirements](#requirements)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Scripts](#scripts)
5. [ECS System](#ecs-system)
6. [Interface](#interface)
7. [Configuration](#configuration)
8. [Example](#example)
9. [License](#license)

## Requirements

Before working with Noel, make sure you have the following installed on your system:

- GLFW
- C++ compiler with supported 20 standard

## Installation

To install Noel on your device, follow these steps:

1. Run the command below in your OS command prompt.
2. Done!

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/worona32b/Noel/main/setup.sh)"
```

## Usage

To use Noel in your project, add the necessary files and libraries to your project and include `noel.h`.

```cpp
#include "noel.h"

int main() {
    // Code...
    return 0;
}
```

## Scripts

Noel comes with several scripts that simplify working with the engine:

- `setup.sh`:  Set up the project for Unix systems.
- `setup.ps1`: Set up the project for Windows systems.

## ECS System

Noel includes a simple yet powerful Entity-Component-System (ECS) for organizing and interacting with objects in your game.

## Interface

Noel's API is designed with an understanding of beginners' needs. It is easy to understand and use for the development of 2D games.

## Configuration

Configuration for the game is executed through the `config.lua` file if it exists.

## Example

Here's a simple example using Noel to create a window and render a rectangle:

```cpp
#include "noel.h"

int main() {
    Noel::initialize();

    Noel::drawCircle(0, 0, 30f, Noel::Color.Blue);

    Noel::terminate();
    return 0;
}
```

## License

Noel is distributed under the [MPL-2 license](LICENSE), allowing you to use and modify it for your own purposes.

---

Wishing you successful game development with Noel!
