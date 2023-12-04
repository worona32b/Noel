#include "cli.h"

namespace noel {

CLI::CLI(int &argc, char **argv) {
  if (argv == nullptr)
    return;

  for (int j = argc - 1; j >= 0; --j) {
    this->_argv.push_back(std::string(argv[j]));
  }
}

bool CLI::exists(const std::string &param) const {
  auto iterator = std::find(this->_argv.begin(), this->_argv.end(), param);

  return iterator != this->_argv.end();
}

} // namespace noel
