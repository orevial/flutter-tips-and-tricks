import 'package:flutter/material.dart';

extension _ThemeModeUtils on ThemeMode {
  String get text {
    switch (this) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System';
    }
  }

  IconData get icon {
    switch (this) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.settings_brightness;
    }
  }
}

ThemeMode themeModeFromString(String? value) {
  return ThemeMode.values.firstWhere(
        (mode) => mode.name == value,
    orElse: () => ThemeMode.system,
  );
}

class SettingsModal extends StatelessWidget {
  const SettingsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        for (final mode in ThemeMode.values) _item(context, mode),
      ],
    );
  }

  Widget _item(BuildContext context, ThemeMode mode) {
    return GestureDetector(
      onTap: () => Navigator.pop(context, mode),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Icon(
              mode.icon,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(mode.text),
          ],
        ),
      ),
    );
  }
}
