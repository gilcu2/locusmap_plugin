import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'locusmap_platform_interface.dart';

/// An implementation of [LocusmapPluginPlatform] that uses method channels.
class MethodChannelLocusmapPlugin extends LocusmapPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('locusmap_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
