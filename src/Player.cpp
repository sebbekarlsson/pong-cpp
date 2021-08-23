#include <Player.hpp>
#include <Game.hpp>

extern Game* game;

Player::Player(float x, float y) : Pad(x, y) {}

void Player::update() {
  Keyboard* keyboard = game->get_keyboard();

  float speed = 0.1f;

  // move up
  if (
    keyboard->is_key_pressed(SDL_SCANCODE_UP) &&
    ((this->y - (this->height/2)) - speed) >= 0)
  {
    this->y -= speed;
  }

  // move down
  if (
    keyboard->is_key_pressed(SDL_SCANCODE_DOWN) &&
    ((this->y + (this->height/2)) + speed <= game->get_height())
  ) {
    this->y += speed;
  }
}

void Player::draw() { this->draw_default(); }
