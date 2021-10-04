#include <Font.hpp>
#include <string.h>
#include <Game.hpp>
#include <stdlib.h>

extern Game* game;
Font::Font(const char* font_path, const char* text, int font_size, SDL_Color color) : texture(0), surface(0) {
  this->font_path = (char*)calloc(strlen(font_path)+1, sizeof(char));
  strcpy(this->font_path, font_path);

  if (TTF_Init() != 0) {
    printf("Could not initialize ttf (%s).\n", TTF_GetError());
    exit(1);
  }
  this->font = TTF_OpenFont(font_path, font_size);

  if (font == NULL) {
    printf("Could not open font %s (%s)", font_path, TTF_GetError());
    exit(1);
  }

  this->set_text(text, color);
}

void Font::set_text(const char* text, SDL_Color color) {
  SDL_Renderer* renderer = game->get_renderer();

  if (this->surface != 0) {
    SDL_FreeSurface(this->surface);
    this->surface = 0;
  }

  if (this->texture != 0) {
    SDL_DestroyTexture(this->texture);
    this->texture = 0;
  }

  this->surface = TTF_RenderText_Solid(
    this->font,
    text,
    color
  );

  this->texture = SDL_CreateTextureFromSurface(
    renderer,
    surface
  );
}

void Font::draw(float x, float y) {
  SDL_Renderer* renderer = game->get_renderer();

  int text_width = this->surface->w;
  int text_height = this->surface->h;

  this->rect = {};
  this->rect.x = x;
  this->rect.y = y;
  this->rect.w = text_width;
  this->rect.h = text_height;

  SDL_RenderCopy(renderer, this->texture, NULL, &this->rect);
}
