#include "gwindow.h"

noel::GameWindow::GameWindow(std::string title, std::string resolution,
                             bool vsync, bool fullscreen) {
  this->_title = title;
  this->_resolution = resolution;
  this->_vsync = vsync;
  this->_fullscreen = fullscreen;
}

noel::GameWindow::~GameWindow() {}

bool noel::GameWindow::initialize() { return 0; }

bool noel::GameWindow::close() { return 0; }
