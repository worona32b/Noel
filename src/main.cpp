#include <iostream>

#include "cli/cli.h"
#include "math/vector2.h"

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

int main(int argc, char *argv[]) {

  initialize(argc, argv);

  return 0;
}
