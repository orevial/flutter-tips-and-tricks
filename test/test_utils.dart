import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/theme/theme.dart';
import 'package:platform/platform.dart';

class Device {
  final String name;
  final String shortName;
  final int height;
  final int width;
  final int pixelDensity;

  const Device(
    this.name,
    this.shortName,
    this.height,
    this.width,
    this.pixelDensity,
  );
}

extension DeviceUtils on Device {
  Future<void> setScreenSize(WidgetTester tester) async {
    final size = Size(width.toDouble(), height.toDouble());
    await tester.binding.setSurfaceSize(size);
    tester.binding.window.physicalSizeTestValue = size;
    tester.binding.window.devicePixelRatioTestValue = pixelDensity.toDouble();
  }
}

final themes = {
  'light': lightThemeData,
  'dark': darkThemeData,
};

const devices = [
  Device('iPhone 11 Pro Max', 'iphone-11-pro-max', 896, 414, 3),
  Device('iPhone 11 Pro', 'iphone-11-pro', 812, 372, 3),
  Device('iPhone 8', 'iphone-8', 667, 375, 2),
  Device('iPhone 5', 'iphone-5', 568, 320, 2),
];

Future<void> loadFonts() async {
  const FileSystem fs = LocalFileSystem();
  const Platform platform = LocalPlatform();
  final flutterRoot = fs.directory(platform.environment['FLUTTER_ROOT']);

  // Roboto fonts
  final robotoFontVariants = [
    'Black',
    'BlackItalic',
    'Bold',
    'BoldItalic',
    'Italic',
    'Light',
    'LightItalic',
    'Medium',
    'MediumItalic',
    'Regular',
    'Thin',
    'ThinItalic',
  ];

  final robotoFontLoader = FontLoader('Roboto');
  for (final variant in robotoFontVariants) {
    final font = flutterRoot
        .childFile(
          fs.path.join(
            'bin',
            'cache',
            'artifacts',
            'material_fonts',
            'Roboto-$variant.ttf',
          ),
        )
        .readAsBytesSync()
        .buffer
        .asByteData();

    robotoFontLoader.addFont(Future.value(font));
  }
  await robotoFontLoader.load();

  // Material icon font
  final iconFont = flutterRoot
      .childFile(
        fs.path.join(
          'bin',
          'cache',
          'artifacts',
          'material_fonts',
          'MaterialIcons-Regular.otf',
        ),
      )
      .readAsBytesSync()
      .buffer
      .asByteData();

  await (FontLoader('MaterialIcons')..addFont(Future<ByteData>.value(iconFont)))
      .load();

  return Future.value();
}
