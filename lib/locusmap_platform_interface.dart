import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'locusmap_method_channel.dart';

abstract class LocusmapPluginPlatform extends PlatformInterface {
  /// Constructs a LocusmapPluginPlatform.
  LocusmapPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static LocusmapPluginPlatform _instance = MethodChannelLocusmapPlugin();

  /// The default instance of [LocusmapPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelLocusmapPlugin].
  static LocusmapPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LocusmapPluginPlatform] when
  /// they register themselves.
  static set instance(LocusmapPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
