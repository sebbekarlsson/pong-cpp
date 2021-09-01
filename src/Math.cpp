#include <Math.hpp>
#include <cmath>

float to_radians(float degrees) { return degrees / 180.0f * M_PI; }

float random_range(float minv, float maxv) {
  return minv + (rand() / (RAND_MAX / (maxv - minv)));
}
