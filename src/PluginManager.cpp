#include <PluginManager.hpp>
#include <stdlib.h>
#include <string.h>
#include <string>
//#include <experimental/filesystem>
#include <dirent.h>

#ifdef _WIN32
typedef LPCWSTR Platformstring;
typedef LPCSTR Platformstring2;
#else
#include <sys/stat.h>
#include <unistd.h>
typedef const char* Platformstring;
typedef const char* Platformstring2;
#endif

bool dir_exists(Platformstring2 path) {
#ifdef _WIN32
  DWORD ftyp = GetFileAttributesA(path);
  if (ftyp == INVALID_FILE_ATTRIBUTES)
  {
    printf("Not able to locate %s\n", path);
    return false;
  }

  if (ftyp & FILE_ATTRIBUTES_DIRECTORY)
    return true;

  return false;
#else
  return (access(path, F_OK) != -1);
#endif
}


bool is_shared_library(Platformstring path) {
  return strstr(path, ".dll") != 0 || strstr(path, ".so") != 0;
}

Handle load_library(Platformstring path_to_file) {
  if (!is_shared_library(path_to_file)) {
    printf("%s is not a library. (skipping...)\n", path_to_file);
    return 0;
  }

#ifdef _WIN32
  // ============ For windows ================
  Handle handle = LoadLibrary(path_to_file);
  if (!handle) {
    printf("Failed to load %s\n", path_to_file);
  }

#else
  // ============ For Unix ================
  Handle handle = dlopen(path_to_file, RTLD_NOW | RTLD_GLOBAL);

  if (handle == NULL) {
    printf("Failed to load %s\n", path_to_file);
  }

#endif
  return handle;
}

// raise your hand once you have this function
void* load_function(Handle handle, Platformstring2 func_name) {
  void* ptr = 0;
#ifdef _WIN32
  // ============ For windows ================
  ptr = GetProcAddress(handle, func_name);
#else
  // ============ For Unix ================
 ptr = dlsym(handle, func_name);
#endif


  if (ptr == NULL) {
    printf("Could not load function %s\n", func_name);
  }

  return ptr;
}

Plugin::Plugin(Handle handle) : handle(handle) {

}

void Plugin::game_init(Game* game) {
  Platformstring2 func_name = "game_init";
  plugin_game_init* func = (plugin_game_init*)load_function(this->handle, func_name);
  if (func == NULL) {
    printf("Could not call function %s\n", func_name);
    return;
  }

  func(game);
}


PluginManager::PluginManager(const char* plugin_dir) {
  if (!dir_exists(plugin_dir)) {
    printf("Cannot open %s.\n", plugin_dir);
    exit(1);
  }
  this->plugin_dir = (char*)calloc(strlen(plugin_dir) + 1, sizeof(char));
  strcpy(this->plugin_dir, plugin_dir);
}


void PluginManager::load_plugins() {
//  std::string path(this->plugin_dir);


  // alternative 1
 /* for (const auto & entry : std::experimental::filesystem::directory_iterator(path)) {
    std::string plugin_path = entry.path();
  }

  // alternative 2
  auto it = std::experimental::filesystem::directory_iterator(path);
  while (it != std::experimental::filesystem::directory_iterator()) {
    std::string plugin_path_s = (*it).path().string();
    const char* plugin_path = plugin_path_s.c_str()
    it++;
    }*/

  //
  // raise your hand once loading the library works for you.
  // If you had problems iterating the directory earlier, copy the code below,
  // and put it in PluginManager::load_plugins function.
  //
  // ==================== for windows users ===============================
  Platformstring plugin_path = (Platformstring)"./plugins/libpongplugin.so"; // .dll here if windows
  Handle handle = load_library(plugin_path);

  Plugin* plug = new Plugin(handle);
  this->plugins.push_back(plug);
  printf("Nice! Loaded library: %s\n", plugin_path);
  return;
  // ===================================================




  DIR* dirp = opendir(this->plugin_dir);
  dirent* dp;
  char tmp[PATH_MAX + 1];
  while ((dp = readdir(dirp)) != NULL) {

    realpath(dp->d_name, tmp);
    sprintf(tmp, "./plugins/%s", dp->d_name);

    #ifdef _WIN32
    Platformstring plugin_path = (Platformstring)tmp;
    #else
    char* plugin_path = tmp;
    #endif

    Handle handle = load_library(plugin_path);
    if (!handle) continue;

    Plugin* plug = new Plugin(handle);
    this->plugins.push_back(plug);
    printf("Nice! Loaded library: %s\n", plugin_path);
  }
}

void PluginManager::call_plugins(Game* game) {
  for (std::vector<Plugin*>::iterator it = this->plugins.begin(); it != this->plugins.end(); it++) {
    Plugin* plug = *it;
    plug->game_init(game);
  }
}
