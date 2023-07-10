#ifndef FLUTTER_PLUGIN_MOKOKO_PLUGIN_H_
#define FLUTTER_PLUGIN_MOKOKO_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace mokoko {

class MokokoPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MokokoPlugin();

  virtual ~MokokoPlugin();

  // Disallow copy and assign.
  MokokoPlugin(const MokokoPlugin&) = delete;
  MokokoPlugin& operator=(const MokokoPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace mokoko

#endif  // FLUTTER_PLUGIN_MOKOKO_PLUGIN_H_
