#include <Ball.hpp>
#include <Enemy.hpp>
#include <Game.hpp>
#include <Player.hpp>
#include <SDL2/SDL.h>
#include <stdio.h>

#define WINDOW_WIDTH 640
#define WINDOW_HEIGHT 480

Game *game;

int main(int argc, char *argv[]) {
  SDL_Window *win = NULL;
  SDL_Renderer *renderer = NULL;

  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("Error!\n");
    return 1;
  }

  // create window
  win = SDL_CreateWindow("Pong", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0);

  // create renderer
  renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);

  game = new Game(WINDOW_WIDTH, WINDOW_HEIGHT, renderer);

  Ball *ball = new Ball(WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2);
  game->add(ball);

  Player *player = new Player(WINDOW_WIDTH - 32, WINDOW_HEIGHT / 2);
  game->add(player);

  Enemy *enemy = new Enemy(32, WINDOW_HEIGHT / 2);
  game->add(enemy);

  while (true) {
    SDL_RenderClear(renderer);

    // looking for user input
    SDL_Event e;
    if (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT)
        break;
    }

    game->update();
    game->draw();

    // update the graphics
    SDL_RenderPresent(renderer);
  }

  // destroying the window and the reference to the renderer
  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(win);

  return 0;
}

// cmake . -G "Unix Makefiles"
// make
// ./pong
