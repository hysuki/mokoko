import 'package:flutter_test/flutter_test.dart';
import 'package:mokoko/mokoko.dart';
import 'package:mokoko/mokoko_platform_interface.dart';
import 'package:mokoko/mokoko_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMokokoPlatform
    with MockPlatformInterfaceMixin
    implements MokokoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MokokoPlatform initialPlatform = MokokoPlatform.instance;

  test('$MethodChannelMokoko is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMokoko>());
  });

  test('getPlatformVersion', () async {
    Mokoko mokokoPlugin = Mokoko();
    MockMokokoPlatform fakePlatform = MockMokokoPlatform();
    MokokoPlatform.instance = fakePlatform;

    expect(await mokokoPlugin.getPlatformVersion(), '42');
  });
}
