import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/main.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  final prefs = ref.watch(prefsProvider);
  return _themeModeFromString(prefs.getString('theme_mode'));
});

ThemeMode _themeModeFromString(String? value) {
  return ThemeMode.values.firstWhere(
    (mode) => mode.name == value,
    orElse: () => ThemeMode.system,
  );
}
