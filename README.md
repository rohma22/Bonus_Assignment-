# Bonus_Assignment-
# Quick Settings Tile Plugin

This Flutter federated plugin allows Android apps to interact with Quick Settings tiles.  
Users can add a custom tile, toggle it, and respond to click events using Android's TileService.

## Features
- Add a Quick Settings tile (user must manually add it from settings)
- Toggle tile active/inactive
- Handle tile click with a toast message (custom behavior extendable)

## Getting Started
1. Add the plugin to your app via path or local package.
2. Call `addTile()` to prompt the user to add the tile.
3. Implement behavior in the native Android TileService.

## Demo
An example Flutter app is included in `example/` for testing.

## Platform Support
✅ Android (API 24+)

## License
MIT
