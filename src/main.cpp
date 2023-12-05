#include <iostream>

#include "cli/cli.h"
#include <GLFW/glfw3.h>
std::string config;

bool initialize(int argc, char *argv[]) {

  noel::CLI cli = noel::CLI(argc, argv);

  if (cli.exists("--help")) {
    std::cout << "HLP_MSG\n";
  }

  if (cli.exists("--version")) {
    std::cout << "VRS_MSG\n";
  }

  return true;
}

int start() { return 0; }
