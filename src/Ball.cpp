#include <Ball.hpp>
#include <Draw.hpp>
#include <Game.hpp>
#include <cmath>
#include <stdio.h>

extern Game *game;

Ball::Ball(float x, float y) : GameObject(x, y) {
  this->red = 255;
  this->green = 255;
  this->blue = 255;
  this->width = 32;
  this->height = 32;
}

void Ball::update() {
}

void Ball::draw() {
  draw_circle(this->x - (this->width / 2), this->y - (this->height / 2),
              this->width, this->red, this->green, this->blue);
}
