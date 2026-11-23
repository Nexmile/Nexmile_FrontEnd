import 'package:flutter/material.dart';

import '../services/preferences_service.dart';

/// Light, dark, or whatever the phone is set to. Kept on the phone: the same
/// customer may want dark on one phone and light on another.
class ThemeController extends ChangeNotifier {
  ThemeController(this._preferences) : _mode = _parse(_preferences.themeMode);

  final PreferencesService _preferences;
  ThemeMode _mode;

  ThemeMode get mode => _mode;

  Future<void> setMode(ThemeMode mode) async {
    if (mode == _mode) return;
    _mode = mode;
    notifyListeners();
    await _preferences.saveThemeMode(mode.name);
  }

  static ThemeMode _parse(String? raw) => switch (raw) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system,
      };
}
