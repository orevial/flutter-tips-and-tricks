// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;
import 'translations.i69n.dart';

String get _languageCode => 'fr';
String get _localeName => 'fr';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations_fr extends Translations {
  const Translations_fr();
  CommonTranslations_fr get common => CommonTranslations_fr(this);
  SettingsTranslations_fr get settings => SettingsTranslations_fr(this);
  CourseTranslations_fr get course => CourseTranslations_fr(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'common':
        return common;
      case 'settings':
        return settings;
      case 'course':
        return course;
      default:
        return super[key];
    }
  }
}

class CommonTranslations_fr extends CommonTranslations {
  final Translations_fr _parent;
  const CommonTranslations_fr(this._parent) : super(_parent);
  String get error => "Quelque chose a échoué";
  String get retry => "Réessayer";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'error':
        return error;
      case 'retry':
        return retry;
      default:
        return super[key];
    }
  }
}

class SettingsTranslations_fr extends SettingsTranslations {
  final Translations_fr _parent;
  const SettingsTranslations_fr(this._parent) : super(_parent);
  ModeSettingsTranslations_fr get mode => ModeSettingsTranslations_fr(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'mode':
        return mode;
      default:
        return super[key];
    }
  }
}

class ModeSettingsTranslations_fr extends ModeSettingsTranslations {
  final SettingsTranslations_fr _parent;
  const ModeSettingsTranslations_fr(this._parent) : super(_parent);
  String get light => "Clair";
  String get dark => "Sombre";
  String get system => "Système";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'light':
        return light;
      case 'dark':
        return dark;
      case 'system':
        return system;
      default:
        return super[key];
    }
  }
}

class CourseTranslations_fr extends CourseTranslations {
  final Translations_fr _parent;
  const CourseTranslations_fr(this._parent) : super(_parent);
  ListCourseTranslations_fr get list => ListCourseTranslations_fr(this);
  DetailsCourseTranslations_fr get details =>
      DetailsCourseTranslations_fr(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'list':
        return list;
      case 'details':
        return details;
      default:
        return super[key];
    }
  }
}

class ListCourseTranslations_fr extends ListCourseTranslations {
  final CourseTranslations_fr _parent;
  const ListCourseTranslations_fr(this._parent) : super(_parent);
  String get title => "Cours Flutter";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      default:
        return super[key];
    }
  }
}

class DetailsCourseTranslations_fr extends DetailsCourseTranslations {
  final CourseTranslations_fr _parent;
  const DetailsCourseTranslations_fr(this._parent) : super(_parent);
  String get doesnt_exist => "Désolé, ce cours n'a pas encore été créé...";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'doesnt_exist':
        return doesnt_exist;
      default:
        return super[key];
    }
  }
}
