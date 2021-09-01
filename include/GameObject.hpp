#ifndef GAME_OBJECT_H
#define GAME_OBJECT_H
class GameObject {
  public:
    GameObject(float x, float y);

    virtual void update() = 0;
    virtual void draw() = 0;

    float get_x();
    float get_y();
    float get_width();
    float get_height();
    float get_speed();
    void set_speed(float speed);
    void push(float direction, float speed);

  protected:
    float x;
    float y;
    float dx;
    float dy;
    float width;
    float height;
    float speed;
};
#endif
