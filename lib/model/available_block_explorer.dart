import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:trollium_wallet_flutter/model/setting_item.dart';

enum AvailableBlockExplorerEnum { TROLLAREXPLORER }

/// Represent the available authentication methods our app supports
class AvailableBlockExplorer extends SettingSelectionItem {
  AvailableBlockExplorerEnum explorer;

  AvailableBlockExplorer(this.explorer);

  String getDisplayName(BuildContext context) {
    switch (explorer) {
      case AvailableBlockExplorerEnum.TROLLAREXPLORER:
        return "explorer.trollar.life";
      default:
        return "explorer.trollar.life";
    }
  }

  // For saving to shared prefs
  int getIndex() {
    return explorer.index;
  }
}