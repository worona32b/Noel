#pragma once

#include <algorithm>
#include <string>
#include <vector>

namespace noel {

/**
 * @brief Command Line Interface (CLI) class for parsing command line arguments.
 */
class CLI {
public:
  /**
   * @brief Constructor for CLI class.
   * @param argc Number of command line arguments.
   * @param argv Array of command line argument strings.
   */
  CLI(int &argc, char **argv);

  /**
   * @brief Get the value associated with a command line parameter.
   * @param param The parameter to search for.
   * @return The value associated with the parameter, or an empty string if not
   * found.
   */
  // const std::string &getValue(const std::string &param) const;

  /**
   * @brief Check if a command line parameter exists.
   * @param param The parameter to check for existence.
   * @return True if the parameter exists, false otherwise.
   */
  bool exists(const std::string &param) const;

private:
  std::vector<std::string>
      _argv; /**< Vector to store command line arguments. */
};

} // namespace noel
