
import 'locusmap_platform_interface.dart';

class LocusmapPlugin {
  Future<String?> getPlatformVersion() {
    return LocusmapPluginPlatform.instance.getPlatformVersion();
  }
}
