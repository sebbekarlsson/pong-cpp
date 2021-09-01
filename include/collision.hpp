#ifndef PONG_COLLISION_H
#define PONG_COLLISION_H
#include <GameObject.hpp>
#include <Game.hpp>

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

typedef struct {
  GameObject* obj;
  Vec2d point;
} CollisionPoint;

bool is_rectangle_colliding(Rectangle rect, Vec2d vec);

bool rect_intersects(Rectangle rect1, Rectangle rect2);

bool get_collision_point(Game* game, GameObject* us, float xa, float ya, CollisionPoint* point);

#endif
