import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/localization/build_context_extension.dart';

extension _ThemeModeUtils on ThemeMode {
  String text(BuildContext context) {
    final tr = context.translations.settings.mode;
    switch (this) {
      case ThemeMode.light:
        return tr.light;
      case ThemeMode.dark:
        return tr.dark;
      case ThemeMode.system:
        return tr.system;
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

class SettingsModal extends StatelessWidget {
  const SettingsModal({super.key});

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
      onTap: () => context.router.pop(mode),
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
            Text(mode.text(context)),
          ],
        ),
      ),
    );
  }
}
