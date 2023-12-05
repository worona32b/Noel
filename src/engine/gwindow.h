#pragma once

#include <GLFW/glfw3.h>
#include <string>

namespace noel {

/**
 * @author worona32b
 */
class GameWindow {
public:
  GameWindow(const GameWindow &) = default;
  GameWindow(GameWindow &&) = delete;
  GameWindow &operator=(const GameWindow &) = default;
  GameWindow &operator=(GameWindow &&) = delete;

  GameWindow(std::string title, std::string resolution, bool vsync = false,
             bool fullscreen = false);

  ~GameWindow();

  bool initialize();
  bool close();

private:
  std::string _title;
  std::string _resolution;
  bool _vsync, _fullscreen;
};
} // namespace noel
