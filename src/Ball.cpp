#include <Ball.hpp>
#include <stdio.h>
#include <Game.hpp>
#include <Draw.hpp>
#include <cmath>

extern Game* game;

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

void Ball::draw() {
  }
