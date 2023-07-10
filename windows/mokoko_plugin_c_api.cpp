#include "include/mokoko/mokoko_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "mokoko_plugin.h"

void MokokoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  mokoko::MokokoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
