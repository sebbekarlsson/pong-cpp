#include <Ball.hpp>
#include <stdio.h>
#include <Game.hpp>
#include <cmath>

extern Game* game;


// raise your hand once you have this function
void draw_pixel(
  int x,
  int y,
  unsigned int red,
  unsigned int green,
  unsigned int blue
) {
  SDL_Renderer* renderer = game->get_renderer();

  SDL_SetRenderDrawColor(
    renderer,
    red,
    green,
    blue,
    1    // alpha
  );

  SDL_RenderDrawPoint(renderer, x, y);

  SDL_SetRenderDrawColor(
    renderer,
    0,
    0,
    0,
    1    // alpha
  );
}

Ball::Ball(float x, float y) : GameObject(x, y) {
  this->red = 255;
  this->green = 255;
  this->blue = 255;
  this->width = 32;
  this->height = 32;
}

void Ball::update() {
}

float to_radians(float degrees) {
  return degrees / 180.0f * M_PI;
}

// #include <cmath>
void Ball::draw() {
  std:
  float centerx = this->x + (this->width / 2);
  float centery = this->y + (this->height / 2);

  for (int i = 0; i < 360; i++) {
    draw_pixel(
      centerx + std::cos(to_radians(i)) * (this->width / 2),
      centery + std::sin(to_radians(i)) * (this->height / 2),
      this->red,
      this->green,
      this->blue
    );
  }

}
