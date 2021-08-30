#ifndef PONG_COLLISION_H
#define PONG_COLLISION_H

typedef struct {
  float x;
  float y;
} Vec2d;

typedef struct {
  float x;
  float y;
  float width;
  float height;
} Rectangle;

bool is_rectangle_colliding(Rectangle rect, Vec2d vec);

#endif
