// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

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

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  CommonTranslations get common => CommonTranslations(this);
  SettingsTranslations get settings => SettingsTranslations(this);
  CourseTranslations get course => CourseTranslations(this);
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
        return key;
    }
  }
}

class CommonTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const CommonTranslations(this._parent);
  String get error => "Something went wrong";
  String get retry => "Retry";
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
        return key;
    }
  }
}

class SettingsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const SettingsTranslations(this._parent);
  ModeSettingsTranslations get mode => ModeSettingsTranslations(this);
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
        return key;
    }
  }
}

class ModeSettingsTranslations implements i69n.I69nMessageBundle {
  final SettingsTranslations _parent;
  const ModeSettingsTranslations(this._parent);
  String get light => "Light";
  String get dark => "Dark";
  String get system => "System";
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
        return key;
    }
  }
}

class CourseTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const CourseTranslations(this._parent);
  ListCourseTranslations get list => ListCourseTranslations(this);
  DetailsCourseTranslations get details => DetailsCourseTranslations(this);
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
        return key;
    }
  }
}

class ListCourseTranslations implements i69n.I69nMessageBundle {
  final CourseTranslations _parent;
  const ListCourseTranslations(this._parent);
  String get title => "Flutter courses";
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
        return key;
    }
  }
}

class DetailsCourseTranslations implements i69n.I69nMessageBundle {
  final CourseTranslations _parent;
  const DetailsCourseTranslations(this._parent);
  String get doesnt_exist => "Sorry, this course is yet to be created...";
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
        return key;
    }
  }
}
