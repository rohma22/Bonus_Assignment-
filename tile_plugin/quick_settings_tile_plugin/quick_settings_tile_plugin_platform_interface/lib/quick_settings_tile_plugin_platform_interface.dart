import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class QuickSettingsTilePluginPlatform extends PlatformInterface {
  QuickSettingsTilePluginPlatform() : super(token: _token);
  static final Object _token = Object();

  static QuickSettingsTilePluginPlatform _instance = MethodChannelQuickSettingsTilePlugin();
  static QuickSettingsTilePluginPlatform get instance => _instance;

  static set instance(QuickSettingsTilePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> addTile(String id, String label) {
    throw UnimplementedError('addTile() has not been implemented.');
  }

  Future<void> updateTileState(String id, bool active) {
    throw UnimplementedError('updateTileState() has not been implemented.');
  }
}

class MethodChannelQuickSettingsTilePlugin extends QuickSettingsTilePluginPlatform {}
