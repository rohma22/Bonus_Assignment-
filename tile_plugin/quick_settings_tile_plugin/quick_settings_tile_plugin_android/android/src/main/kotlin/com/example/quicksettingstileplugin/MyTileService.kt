package com.example.quicksettingstileplugin

import android.service.quicksettings.TileService
import android.widget.Toast

@android.annotation.TargetApi(android.os.Build.VERSION_CODES.N)
class MyTileService : TileService() {
    override fun onClick() {
        Toast.makeText(this, "Tile Clicked!", Toast.LENGTH_SHORT).show()
        qsTile?.let {
            it.state = if (it.state == android.service.quicksettings.Tile.STATE_ACTIVE)
                android.service.quicksettings.Tile.STATE_INACTIVE
            else
                android.service.quicksettings.Tile.STATE_ACTIVE
            it.updateTile()
        }
    }

    override fun onTileAdded() {
        super.onTileAdded()
        qsTile?.label = "My Tile"
        qsTile?.state = android.service.quicksettings.Tile.STATE_INACTIVE
        qsTile?.updateTile()
    }
}
