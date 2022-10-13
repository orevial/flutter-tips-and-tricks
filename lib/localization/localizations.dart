import 'package:flutter/widgets.dart';
import 'package:flutters_tips_and_tricks/localization/translations/translations.i69n.dart';
import 'package:flutters_tips_and_tricks/localization/translations/translations_fr.i69n.dart';

final _translations = <String, Translations Function()>{
  'en': () => const Translations(),
  'fr': () => const Translations_fr(),
};

class FlutterTipsAndTricksLocalizations {
  const FlutterTipsAndTricksLocalizations(this.translations);

  final Translations translations;

  static const LocalizationsDelegate<FlutterTipsAndTricksLocalizations>
      delegate = _FlutterTipsAndTricksLocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _translations.keys.map((x) => Locale(x)).toList();

  static Translations of(BuildContext context) =>
      Localizations.of<FlutterTipsAndTricksLocalizations>(
        context,
        FlutterTipsAndTricksLocalizations,
      )!
          .translations;
}

class _FlutterTipsAndTricksLocalizationsDelegate
    extends LocalizationsDelegate<FlutterTipsAndTricksLocalizations> {
  const _FlutterTipsAndTricksLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _translations.keys.contains(locale.languageCode);

  @override
  Future<FlutterTipsAndTricksLocalizations> load(Locale locale) => Future.value(
        FlutterTipsAndTricksLocalizations(
          _translations[locale.languageCode]!(),
        ),
      );

  @override
  bool shouldReload(
    LocalizationsDelegate<FlutterTipsAndTricksLocalizations> old,
  ) =>
      false;
}
