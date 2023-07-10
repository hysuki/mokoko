//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <mokoko/mokoko_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) mokoko_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MokokoPlugin");
  mokoko_plugin_register_with_registrar(mokoko_registrar);
}
