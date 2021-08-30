#include <collision.hpp>

// checks if a point is within a rectangle
bool is_rectangle_colliding(Rectangle rect, Vec2d vec) {

  bool x_touching = (vec.x >= rect.x - (rect.width / 2) &&
                     vec.x <= (rect.x + (rect.width / 2)));

  bool y_touching = (vec.y >= rect.y - (rect.height / 2) &&
                     vec.y <= (rect.y + (rect.height / 2)));

  return x_touching && y_touching;
}

bool rect_intersects_old(Rectangle rect1, Rectangle rect2) {

  if (rect1.x + rect1.width >= rect2.x && rect1.x <= rect2.x + rect2.width) {
    if (rect1.y + rect1.height >= rect2.y && rect1.y <= rect2.y + rect2.height) {
      return true;
    }
  }

  return false;
}


bool rect_intersects(Rectangle rect1, Rectangle rect2) {
  return (rect1.x + rect1.width >= rect2.x && rect1.x <= rect2.x + rect2.width) &&
    (rect1.y + rect1.height >= rect2.y && rect1.y <= rect2.y + rect2.height);
}
