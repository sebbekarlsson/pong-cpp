#include <Game.hpp>
#include <Ball.hpp>

#define LOCK_TIME 2500

Game::Game(int width, int height, SDL_Renderer *renderer, Keyboard *keyboard)
  : width(width),
    height(height),
    renderer(renderer),
    keyboard(keyboard),
    is_locked(false),
    lock_timer(LOCK_TIME), player_score(0), enemy_score(0) {
  this->font_enemy = 0;
  this->font_player = 0;
}

std::vector<GameObject*> Game::get_game_objects() {
  return this->objects;
}

int Game::get_width() { return this->width; }

int Game::get_height() { return this->height; }

Keyboard *Game::get_keyboard() { return this->keyboard; }

SDL_Renderer *Game::get_renderer() { return this->renderer; }

void Game::add(GameObject *obj) { this->objects.push_back(obj); }


void Game::lock() {
  this->lock_timer = LOCK_TIME;
  this->is_locked = true;
}

// probably won't use this
void Game::unlock() {
  this->lock_timer = 0;
  this->is_locked = false;
}

void Game::reset(WinType winner) {
  char tmpstr[256];

  if (winner == WIN_PLAYER) {
    printf("Player won!\n");
    this->player_score += 1;

    sprintf(tmpstr, "%d", this->player_score);
    this->font_player->set_text(tmpstr, {255, 255, 255, 255});

  } else {
    printf("Enemy won!\n");
    this->enemy_score += 1;

    sprintf(tmpstr, "%d", this->enemy_score);
    this->font_enemy->set_text(tmpstr, {255, 255, 255, 255});
  }
  printf("Player: %d\n", this->player_score);
  printf("Enemy: %d\n", this->enemy_score);
  this->lock();
  this->reset_ball();
}

void Game::remove(GameObject* obj) {
  int length = this->objects.size();

  std::vector<GameObject*>::iterator begin = this->objects.begin();

  for (int i = 0; i < length; i++) {
    GameObject* object = this->objects[i];

    if (object == obj) {
      this->objects.erase(begin + i);
      break;
    }
  }
}

void Game::reset_ball() {

  // 1. finding the ball
  int length = this->objects.size();

  std::vector<GameObject*>::iterator begin = this->objects.begin();

  Ball* ball = 0;

  for (int i = 0; i < length; i++) {
    GameObject* object = this->objects[i];

    if (dynamic_cast<Ball*>(object) != nullptr) {
      ball = (Ball*)object;
      break;
    }
  }

  // 2.  remove it
  if (ball) {
    this->remove(ball);
    delete ball;
  }

  // 3. inserting a new ball
  this->add(new Ball(this->get_width() / 2, this->get_height() / 2));
}

/**
 * Loop through all GameObjects and
 * call their update method. */
void Game::update() {
  if (this->lock_timer > 0) {
    this->lock_timer -= 1;
  } else {
    for (std::vector<GameObject *>::iterator it = objects.begin();
        it != objects.end(); it++) {
      (*it)->update();
    }
  }
}

/**
 * Loop through all GameObjects and
 * call their draw method. */
void Game::draw() {
  if (this->font_enemy == 0) {
    this->font_enemy = new Font("./assets/VT323-Regular.ttf", "5", 48, {255, 255, 255, 255});
  }
  if (this->font_player == 0) {
    this->font_player = new Font("./assets/VT323-Regular.ttf", "2", 48, {255, 255, 255, 255});
  }

  // draw enemy score
  this->font_enemy->draw(
    32,
    32
  );

  // draw player score
  this->font_player->draw(
    this->get_width() - 64,
    32
  );

  for (std::vector<GameObject *>::iterator it = objects.begin();
       it != objects.end(); it++) {
    (*it)->draw();
  }


}
