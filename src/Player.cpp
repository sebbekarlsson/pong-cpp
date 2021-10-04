#include <Game.hpp>
#include <Player.hpp>
#include <collision.hpp>

extern Game *game;

Player::Player(float x, float y) : Pad(x, y) {}

void Player::update() {
  Keyboard *keyboard = game->get_keyboard();

  float speed = 8.0f;

  // move up
  if (keyboard->is_key_pressed(SDL_SCANCODE_UP) &&
      !is_rectangle_colliding({this->x, this->y, this->width, this->height},
                              {this->x, -this->height})) {
    this->y -= speed;
  }

  // move down
  if (keyboard->is_key_pressed(SDL_SCANCODE_DOWN) &&
      !is_rectangle_colliding({this->x, this->y, this->width, this->height},
                              {this->x, (float)game->get_height()})) {
    this->y += speed;
  }
}

void Player::draw() { this->draw_default(); }
