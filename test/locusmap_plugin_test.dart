import 'package:flutter_test/flutter_test.dart';
import 'package:locusmap_plugin/locusmap.dart';
import 'package:locusmap_plugin/locusmap_platform_interface.dart';
import 'package:locusmap_plugin/locusmap_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLocusmapPluginPlatform
    with MockPlatformInterfaceMixin
    implements LocusmapPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LocusmapPluginPlatform initialPlatform = LocusmapPluginPlatform.instance;

  test('$MethodChannelLocusmapPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLocusmapPlugin>());
  });

  test('getPlatformVersion', () async {
    LocusmapPlugin locusmapPlugin = LocusmapPlugin();
    MockLocusmapPluginPlatform fakePlatform = MockLocusmapPluginPlatform();
    LocusmapPluginPlatform.instance = fakePlatform;

    expect(await locusmapPlugin.getPlatformVersion(), '42');
  });
}
