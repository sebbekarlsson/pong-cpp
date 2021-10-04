#include <Ball.hpp>
#include <Enemy.hpp>
#include <Game.hpp>
#include <Player.hpp>
#include <SDL2/SDL.h>
#include <stdio.h>
#include <time.h>
#include <PluginManager.hpp>

#define WINDOW_WIDTH 640 * 2
#define WINDOW_HEIGHT 480 * 2

Game *game;

// raise your hand once you have added the plugin manager to main.cpp
PluginManager* pluginManager;

int main(int argc, char *argv[]) {
  srand (time(NULL));

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

  Keyboard *keyboard = new Keyboard();

  game = new Game(WINDOW_WIDTH, WINDOW_HEIGHT, renderer, keyboard);

  pluginManager = new PluginManager("./plugins");
  pluginManager->load_plugins();
  pluginManager->call_plugins(game);

  game->reset(WIN_NONE);

  Player *player = new Player(WINDOW_WIDTH - (32*2), WINDOW_HEIGHT / 2);
  game->add(player);

  Enemy *enemy = new Enemy(32, WINDOW_HEIGHT / 2);
  game->add(enemy);

  int32_t b = SDL_GetTicks();

  while (true) {

    // looking for user input
    SDL_Event e;
    if (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT)
        break;

      switch (e.type) {
      case SDL_KEYDOWN: {
        keyboard->set_key(e.key.keysym.scancode, 1);
      }; break;
      case SDL_KEYUP: {
        keyboard->set_key(e.key.keysym.scancode, 0);
      }; break;
      }
    }

    int32_t a = SDL_GetTicks();
    float delta = a - b;


    if (delta >= 1000/60.0)
    {
        SDL_RenderClear(renderer);
        b = a;
        game->update();
    }

    SDL_RenderClear(renderer);
    game->draw();
    SDL_RenderPresent(renderer);


    // update the graphics
  }

  // destroying the window and the reference to the renderer
  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(win);

  return 0;
}

// cmake . -G "Unix Makefiles"
// make
// ./pong
