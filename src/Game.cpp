#include <Game.hpp>

Game::Game(int width, int height, SDL_Renderer *renderer, Keyboard* keyboard)
  : width(width),
    height(height),
    renderer(renderer),
    keyboard(keyboard) {
}

int Game::get_width() {
  return this->width;
}

int Game::get_height() {
  return this->height;
}

Keyboard* Game::get_keyboard() {
  return this->keyboard;
}

SDL_Renderer *Game::get_renderer() { return this->renderer; }

void Game::add(GameObject *obj) { this->objects.push_back(obj); }

/**
 * Loop through all GameObjects and
 * call their update method. */
void Game::update() {
  for (std::vector<GameObject *>::iterator it = objects.begin();
       it != objects.end(); it++) {
    (*it)->update();
  }
}

/**
 * Loop through all GameObjects and
 * call their draw method. */
void Game::draw() {
  for (std::vector<GameObject *>::iterator it = objects.begin();
       it != objects.end(); it++) {
    (*it)->draw();
  }
}
