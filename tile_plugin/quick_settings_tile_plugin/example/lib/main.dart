import 'package:flutter/material.dart';
import 'package:quick_settings_tile_plugin/quick_settings_tile_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final QuickSettingsTilePlugin plugin = QuickSettingsTilePlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Settings Tile Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TileHomePage(plugin: plugin),
    );
  }
}

class TileHomePage extends StatelessWidget {
  final QuickSettingsTilePlugin plugin;

  const TileHomePage({Key? key, required this.plugin}) : super(key: key);

  void _addTile() async {
    await plugin.addTile("my_tile_id", "My Tile");
  }

  void _toggleTile(bool isActive) async {
    await plugin.updateTileState("my_tile_id", isActive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Settings Tile Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _addTile,
              child: Text('Open Quick Settings'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _toggleTile(true),
              child: Text('Set Tile Active'),
            ),
            ElevatedButton(
              onPressed: () => _toggleTile(false),
              child: Text('Set Tile Inactive'),
            ),
          ],
        ),
      ),
    );
  }
}
