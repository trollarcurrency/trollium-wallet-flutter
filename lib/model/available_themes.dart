import 'package:flutter/material.dart';
import 'package:trollium_wallet_flutter/themes.dart';
import 'package:trollium_wallet_flutter/model/setting_item.dart';

enum ThemeOptions { TROLLIUM, TITANIUM, INDIUM, NEPTUNIUM, THORIUM }

/// Represent notification on/off setting
class ThemeSetting extends SettingSelectionItem {
  ThemeOptions theme;

  ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    switch (theme) {
      case ThemeOptions.THORIUM:
        return "Thorium";
      case ThemeOptions.NEPTUNIUM:
        return "Neptunium";
      case ThemeOptions.INDIUM:
        return "Indium";
      case ThemeOptions.TITANIUM:
        return "Titanium";
      case ThemeOptions.TROLLIUM:
      default:
        return "Trollium";
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      case ThemeOptions.THORIUM:
        return ThoriumTheme();
      case ThemeOptions.NEPTUNIUM:
        return NeptuniumTheme();
      case ThemeOptions.INDIUM:
        return IndiumTheme();
      case ThemeOptions.TITANIUM:
        return TitaniumTheme();
      case ThemeOptions.TROLLIUM:
      default:
        return TrolliumTheme();
    }
  }

  // For saving to shared prefs
  int getIndex() {
    return theme.index;
  }
}
