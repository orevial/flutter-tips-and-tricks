import 'package:flutter/widgets.dart';
import 'package:flutters_tips_and_tricks/localization/localizations.dart';
import 'package:flutters_tips_and_tricks/localization/translations/translations.i69n.dart';

extension BuildContextX on BuildContext {
  String get languageCode => Localizations.localeOf(this).toLanguageTag();

  Translations get translations => FlutterTipsAndTricksLocalizations.of(this);
}
