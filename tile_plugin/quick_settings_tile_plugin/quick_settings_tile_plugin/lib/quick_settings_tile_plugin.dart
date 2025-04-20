import 'quick_settings_tile_plugin_platform_interface.dart';

class QuickSettingsTilePlugin {
  Future<void> addTile(String id, String label) {
    return QuickSettingsTilePluginPlatform.instance.addTile(id, label);
  }

  Future<void> updateTileState(String id, bool active) {
    return QuickSettingsTilePluginPlatform.instance.updateTileState(id, active);
  }
}
