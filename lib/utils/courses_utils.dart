final completeCourses = [
  {
    "id": "flutter-intro",
    "name": "Flutter intro",
    "pages": [
      {
        "name": "Flutter in short",
        "content":
            "Flutter is a cross-platform UI toolkit that is designed to allow code reuse across operating systems such as iOS and Android, while also allowing applications to interface directly with underlying platform services. The goal is to enable developers to deliver high-performance apps that feel natural on different platforms, embracing differences where they exist while sharing as much code as possible.\n\nDuring development, Flutter apps run in a VM that offers stateful hot reload of changes without needing a full recompile. For release, Flutter apps are compiled directly to machine code, whether Intel x64 or ARM instructions, or to JavaScript if targeting the web. The framework is open source, with a permissive BSD license, and has a thriving ecosystem of third-party packages that supplement the core library functionality.\n\nThis overview is divided into a number of sections:\n\nThe layer model: The pieces from which Flutter is constructed.\nReactive user interfaces: A core concept for Flutter user interface development.\nAn introduction to widgets: The fundamental building blocks of Flutter user interfaces.\nThe rendering process: How Flutter turns UI code into pixels.\nAn overview of the platform embedders: The code that lets mobile and desktop OSes execute Flutter apps.\nIntegrating Flutter with other code: Information about different techniques available to Flutter apps.\nSupport for the web: Concluding remarks about the characteristics of Flutter in a browser environment.\n"
      },
      {
        "name": "Learn Flutter",
        "content":
            "There are many useful resources while learning Flutter, such as : \n\n- Official documentation. You should definitely start there !\n- Udemy courses\n- YouTube channels\n- Newsletters"
      }
    ]
  },
  {
    "id": "flutter-setup",
    "name": "Flutter setup",
    "pages": [
      {
        "name": "Install Flutter SDK",
        "content":
            "The official documentation is really well written and will guide you towards installing Flutter for your operating system. In particular you can install Flutter on the following platforms: \n\n- Windows\n- MacOS\n- Linux\n- Chrome OS\n\nMore info at https://docs.flutter.dev/get-started/install"
      },
      {
        "name": "Install target platform SDK",
        "content":
            "Once you have an installed Flutter SDK you might need to install additional platform SDK depending on the platform you are targeting. For example you usually don't need to install anything if you are only targeting web support but you might need to install components if you are targeting either Android, iOS or MacOS as apps platforms."
      },
      {
        "name": "Mac with M1 chip",
        "content":
            "Note that you should be careful if installing Flutter and platform tools with the new Mac M1 chips as exact installation process might need to be tweaked a little bit."
      }
    ]
  },
  {
    "id": "dev-env-setup",
    "name": "Dev environment setup",
    "pages": [
      {
        "name": "Android Studio",
        "content":
            "Writing Flutter code is pretty easy with Android Studio. Android Studio offers a complete, integrated IDE experience for Flutter.\n\nAndroid Studio, version 3.0 or later\nAlternatively, you can also use IntelliJ:\n\nIntelliJ IDEA Community, version 2017.1 or later\nIntelliJ IDEA Ultimate, version 2017.1 or later\n"
      },
      {
        "name": "VS Code",
        "content":
            "Writing Flutter code is pretty easy with VS Code. VS Code is a lightweight editor with Flutter app execution and debug support.\n\nVS Code, latest stable version\n"
      },
      {
        "name": "Which is best ?",
        "content":
            "The best IDE is the one you are the most comfortable with. Yes, really. It makes no difference whatsoever if working with one or the other, you can even have a team where each person works with a different IDE, it doesn't matter."
      },
    ]
  },
  {
    "id": "creating-first-app",
    "name": "Creating our first app",
    "pages": [
      {
        "name": "flutter --version",
        "content":
            "This command gives you the current version of Flutter that is installed on your machine. Example output : \n\nFlutter 2.8.1 • channel stable • https://github.com/flutter/flutter.git\nFramework • revision 77d935af4d (il y a 5 semaines) • 2021-12-16 08:37:33 -0800\nEngine • revision 890a5fca2e\nTools • Dart 2.15.1\n\nNote that this command will also display a message if you have an outdated version of the Flutter framework."
      },
      {
        "name": "flutter doctor",
        "content":
            "This command is very useful when you want to make sure everything is installed properly, including Flutter SDK, iOS SDK (XCode tools), Android SDK, your favorite IDE or even available simulator or emulators. Example output :\n\nDoctor summary (to see all details, run flutter doctor -v):\n[✓] Flutter (Channel stable, 2.8.1, on macOS 11.3 20E232 darwin-x64, locale fr)\n[!] Android toolchain - develop for Android devices (Android SDK version 30.0.3)\n    ✗ cmdline-tools component is missing\n      Run `path/to/sdkmanager --install \"cmdline-tools;latest\"`\n      See https://developer.android.com/studio/command-line for more details.\n    ✗ Android license status unknown.\n      Run `flutter doctor --android-licenses` to accept the SDK licenses.\n      See https://flutter.dev/docs/get-started/install/macos#android-setup for more details.\n[✓] Xcode - develop for iOS and macOS (Xcode 13.2.1)\n[✓] Chrome - develop for the web\n[✓] Android Studio (version 2020.3)\n[✓] IntelliJ IDEA Community Edition (version 2020.3.2)\n[✓] VS Code (version 1.63.2)\n[✓] Connected device (2 available)\n\n! Doctor found issues in 1 category."
      },
      {
        "name": "flutter upgrade",
        "content":
            "In case your local installed copy of Flutter is outdated, this command will upgrade your local version to the last known version of your active channel (beta/stable)"
      },
      {
        "name": "flutter create",
        "content":
            "flutter create creates an app skeleton such as a basic counter. It is very useful to run instead of doing it manually because it creates a lot of useful files for each platform (e.g. Android, iOS, web).\n\nNote that you probably want to avoid calling this command with no argumenst as it will use default package name \"com.example\" for all your source code, which you probably don't want if you intend to get serious with your app. Instead you should use \"--org\" argument to specify your company name as a website notation.\n\nExample command with associated output :\n\nflutter create --org com.stacklabs flutter_tips_and_tricks\n\nSigning iOS app for device deployment using developer identity: \"Apple Development: Awsome Developer (A123BC8W9)\"\nCreating project flutter_tips_and_tricks...\n  flutter_tips_and_tricks/test/widget_test.dart (created)\n  flutter_tips_and_tricks/pubspec.yaml (created)\n  flutter_tips_and_tricks/README.md (created)\n  flutter_tips_and_tricks/lib/main.dart (created)\n  flutter_tips_and_tricks/ios/Runner.xcworkspace/contents.xcworkspacedata (created)\n  flutter_tips_and_tricks/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)\n  flutter_tips_and_tricks/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings (created)\n  flutter_tips_and_tricks/ios/Runner/Info.plist (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png (created)\n  flutter_tips_and_tricks/ios/Runner/Base.lproj/LaunchScreen.storyboard (created)\n  flutter_tips_and_tricks/ios/Runner/Base.lproj/Main.storyboard (created)\n  flutter_tips_and_tricks/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata (created)\n  flutter_tips_and_tricks/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist (created)\n  flutter_tips_and_tricks/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings (created)\n  flutter_tips_and_tricks/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme (created)\n  flutter_tips_and_tricks/ios/Flutter/Debug.xcconfig (created)\n  flutter_tips_and_tricks/ios/Flutter/Release.xcconfig (created)\n  flutter_tips_and_tricks/ios/Flutter/AppFrameworkInfo.plist (created)\n  flutter_tips_and_tricks/ios/.gitignore (created)\n  flutter_tips_and_tricks/flutter_tips_and_tricks.iml (created)\n  flutter_tips_and_tricks/.gitignore (created)\n  flutter_tips_and_tricks/web/favicon.png (created)\n  flutter_tips_and_tricks/web/index.html (created)\n  flutter_tips_and_tricks/web/manifest.json (created)\n  flutter_tips_and_tricks/web/icons/Icon-maskable-512.png (created)\n  flutter_tips_and_tricks/web/icons/Icon-192.png (created)\n  flutter_tips_and_tricks/web/icons/Icon-maskable-192.png (created)\n  flutter_tips_and_tricks/web/icons/Icon-512.png (created)\n  flutter_tips_and_tricks/.metadata (created)\n  flutter_tips_and_tricks/android/app/src/profile/AndroidManifest.xml (created)\n  flutter_tips_and_tricks/android/app/src/main/res/mipmap-mdpi/ic_launcher.png (created)\n  flutter_tips_and_tricks/android/app/src/main/res/mipmap-hdpi/ic_launcher.png (created)\n  flutter_tips_and_tricks/android/app/src/main/res/drawable/launch_background.xml (created)\n  flutter_tips_and_tricks/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png (created)\n  flutter_tips_and_tricks/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png (created)\n  flutter_tips_and_tricks/android/app/src/main/res/values-night/styles.xml (created)\n  flutter_tips_and_tricks/android/app/src/main/res/values/styles.xml (created)\n  flutter_tips_and_tricks/android/app/src/main/res/drawable-v21/launch_background.xml (created)\n  flutter_tips_and_tricks/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png (created)\n  flutter_tips_and_tricks/android/app/src/main/AndroidManifest.xml (created)\n  flutter_tips_and_tricks/android/app/src/debug/AndroidManifest.xml (created)\n  flutter_tips_and_tricks/android/gradle/wrapper/gradle-wrapper.properties (created)\n  flutter_tips_and_tricks/android/gradle.properties (created)\n  flutter_tips_and_tricks/android/.gitignore (created)\n  flutter_tips_and_tricks/android/settings.gradle (created)\n  flutter_tips_and_tricks/android/app/build.gradle (created)\n  flutter_tips_and_tricks/android/app/src/main/kotlin/com/stacklabs/flutter_tips_and_tricks/MainActivity.kt (created)\n  flutter_tips_and_tricks/android/build.gradle (created)\n  flutter_tips_and_tricks/android/flutter_tips_and_tricks_android.iml (created)\n  flutter_tips_and_tricks/ios/Runner/Runner-Bridging-Header.h (created)\n  flutter_tips_and_tricks/ios/Runner/AppDelegate.swift (created)\n  flutter_tips_and_tricks/ios/Runner.xcodeproj/project.pbxproj (created)\n  flutter_tips_and_tricks/analysis_options.yaml (created)\n  flutter_tips_and_tricks/.idea/runConfigurations/main_dart.xml (created)\n  flutter_tips_and_tricks/.idea/libraries/Dart_SDK.xml (created)\n  flutter_tips_and_tricks/.idea/libraries/KotlinJavaRuntime.xml (created)\n  flutter_tips_and_tricks/.idea/modules.xml (created)\n  flutter_tips_and_tricks/.idea/workspace.xml (created)\nRunning \"flutter pub get\" in flutter_tips_and_tricks...        \n\nWrote 81 files.\n\nAll done!\nIn order to run your application, type:\n\n  \$ cd flutter_tips_and_tricks\n  \$ flutter run\n\nYour application code is in flutter_tips_and_tricks/lib/main.dart.\n"
      },
      {
        "name": "flutter pub get",
        "content":
            "This command downloads dependencies defined in pubspec.yaml. You should run it anytime you add a package or update a package version in your pubspec.yaml. It is the Flutter equivalent to well-known Node \"npm run\" or Java/Kotlin \"gradle build\"."
      },
      {
        "name": "flutter run",
        "content":
            "This command... runs your app. More precisely it runs your app either on the only device connected (e.g. Chrome) or makes you choose on which device you want to run your app. Once the target chosen the command will take care of building your Flutter code to platform code.\n\nExample choice of target device :\n\nMultiple devices found:\niPhone 8 (mobile)      • 71A9F7AD-6B79-4CD1-9807-AD6AF68569AB • ios            • com.apple.CoreSimulator.SimRuntime.iOS-15-2 (simulator)\niPhone 11 Pro (mobile) • C71C19FC-AA53-454D-B62A-A4FDEF220A7E • ios            • com.apple.CoreSimulator.SimRuntime.iOS-15-2 (simulator)\nChrome (web)           • chrome                               • web-javascript • Google Chrome 97.0.4692.99\n[1]: iPhone 8 (71A9F7AD-6B79-4CD1-9807-AD6AF68569AB)\n[2]: iPhone 11 Pro (C71C19FC-AA53-454D-B62A-A4FDEF220A7E)\n[3]: Chrome (chrome)\nPlease choose one (To quit, press \"q/Q\"):\n\n... and example output of an iOS compilation and run:\n\nLaunching lib/main.dart on iPhone 11 Pro in debug mode...\nRunning pod install...                                           \nRunning Xcode build...\n └─Compiling, linking and signing...                         5,1s\nXcode build done.                                           26,5s\nSyncing files to device iPhone 11 Pro...                           136ms\n\nFlutter run key commands.\nr Hot reload. \uD83D\uDD25\uD83D\uDD25\uD83D\uDD25\nR Hot restart.\nh List all available interactive commands.\nd Detach (terminate \"flutter run\" but leave application running).\nc Clear the screen\nq Quit (terminate the application on the device).\n\n\uD83D\uDCAA Running with sound null safety \uD83D\uDCAA\n\nAn Observatory debugger and profiler on iPhone 11 Pro is available at: http://127.0.0.1:52966/dV1R8_E-_Uw=/\nThe Flutter DevTools debugger and profiler on iPhone 11 Pro is available at: http://127.0.0.1:9101?uri=http://127.0.0.1:52966/dV1R8_E-_Uw=/"
      },
      {
        "name": "Pubspec",
        "content":
            "Every Flutter project includes a pubspec.yaml file, often referred to as the pubspec. A basic pubspec is generated when you create a new Flutter project. It’s located at the top of the project tree and contains metadata about the project that the Dart and Flutter tooling needs to know. The pubspec is written in YAML, which is human readable, but be aware that white space (tabs v spaces) matters.\n\nThe pubspec file specifies dependencies that the project requires, such as particular packages (and their versions), fonts, or image files. It also specifies other requirements, such as dependencies on developer packages (like testing or mocking packages), or particular constraints on the version of the Flutter SDK.\n\nFields common to both Dart and Flutter projects are described in the pubspec file on dart.dev. This page lists Flutter-specific fields that are only valid for a Flutter project.\n\n Note: The first time you build your project, it creates a pubspec.lock file that contains specific versions of the included packages. This ensures that you get the same version the next time the project is built.\n\nWhen you create a new project with the flutter create command (or by using the equivalent button in your IDE), it creates a pubspec for a basic Flutter app.\n\nHere is an example of a Flutter project pubspec file. The Flutter only fields are highlighted.\n\ncontent_copy\nname: <project name>\ndescription: A new Flutter project.\n\npublish_to: 'none'\n\nversion: 1.0.0+1\n\nenvironment:\n  sdk: \">=2.7.0 <3.0.0\"\n\ndependencies:\n  flutter:       # Required for every Flutter project\n    sdk: flutter # Required for every Flutter project\n\n  cupertino_icons: ^1.0.2 # Only required if you use Cupertino (iOS style) icons\n\ndev_dependencies:\n  flutter_test:\n    sdk: flutter # Required for a Flutter project that includes tests\n\nflutter:\n\n  uses-material-design: true # Required if you use the Material icon font\n\n  assets:  # Lists assets, such as image files\n    - images/a_dot_burr.jpeg\n    - images/a_dot_ham.jpeg\n\n  fonts:              # Required if your app uses custom fonts\n    - family: Schyler\n      fonts:\n        - asset: fonts/Schyler-Regular.ttf\n        - asset: fonts/Schyler-Italic.ttf\n          style: italic\n    - family: Trajan Pro\n      fonts:\n        - asset: fonts/TrajanPro.ttf\n        - asset: fonts/TrajanPro_Bold.ttf\n          weight: 700"
      },
      {
        "name": "Linters",
        "content":
            "Usually when developing we try to respect and enforce good development practices or code conventions : that is the goal of linters.\n\nThe package:flutter_lints defines the latest set of recommended lints that encourage good coding practices for Flutter apps, packages, and plugins. Projects created with flutter create using Flutter version 2.3.0-12.0.pre or newer are already enabled to use the latest set of recommended lints. Projects created prior to that version can upgrade to it with the instructions in this guide.\n\nPrior to the introduction of package:flutter_lints, the Flutter framework shipped with a set of lints defined in analysis_options_user.yaml that was used by the dart analyzer to identify code issues if a Flutter project didn’t define a custom analysis_options.yaml file. Since analysis_options_user.yaml was tied to a particular framework version, it was difficult to evolve without breaking existing apps, packages, and plugins. As a result of that, the lints defined in analysis_options_user.yaml are heavily outdated. To fix this, package:flutter_lints was created. The package versions the lint set to enable evolving it without breaking existing projects. Since the package builds on Dart’s package:lints it also aligns the lints recommended for Flutter projects with the rest of the Dart ecosystem.\n\n"
      },
      {
        "name": "Hot reload / hot restart",
        "content":
            "To hot reload a Flutter app:\n\nRun the app from a supported Flutter editor or a terminal window. Either a physical or virtual device can be the target. Only Flutter apps in debug mode can be hot reloaded.\nModify one of the Dart files in your project. Most types of code changes can be hot reloaded; for a list of changes that require a hot restart, see Special cases.\nIf you’re working in an IDE/editor that supports Flutter’s IDE tools, select Save All (cmd-s/ctrl-s), or click the hot reload button on the toolbar.\n\nIf you’re running the app at the command line using flutter run, enter r in the terminal window.\n\nWhat is the difference between hot reload, hot restart, and full restart?\n\nHot reload loads code changes into the VM and re-builds the widget tree, preserving the app state; it doesn’t rerun main() or initState(). (⌘\\ in Intellij and Android Studio, ⌃F5 in VSCode)\nHot restart loads code changes into the VM, and restarts the Flutter app, losing the app state. (⇧⌘\\ in IntelliJ and Android Studio, ⇧⌘F5 in VSCode)\nFull restart restarts the iOS, Android, or web app. This takes longer because it also recompiles the Java / Kotlin / ObjC / Swift code. On the web, it also restarts the Dart Development Compiler. There is no specific keyboard shortcut for this; you need to stop and start the run configuration.\nFlutter web currently supports hot restart but not hot reload."
      },
      {
        "name": "DevTools & Widget inspector",
        "content":
            "DevTools is a suite of performance and debugging tools for Dart and Flutter.\n\nHere are some of the things you can do with DevTools:\n\n- Inspect the UI layout and state of a Flutter app.\n- Diagnose UI jank performance issues in a Flutter app.\n- CPU profiling for a Flutter or Dart app.\n- Network profiling for a Flutter app.\n- Source-level debugging of a Flutter or Dart app.\n- Debug memory issues in a Flutter or Dart command-line app.\n- View general log and diagnostics information about a running Flutter or Dart command-line app.\n- Analyze code and app size.\n\nThe Flutter widget inspector is a powerful tool for visualizing and exploring Flutter widget trees. The Flutter framework uses widgets as the core building block for anything from controls (such as text, buttons, and toggles), to layout (such as centering, padding, rows, and columns). The inspector helps you visualize and explore Flutter widget trees, and can be used for the following:\n\nunderstanding existing layouts\ndiagnosing layout issues\n\n\n"
      }
    ]
  },
  {
    "id": "state_management",
    "name": "State management",
    "pages": [
      {
        "name": "Stateless widget",
        "content":
            "A widget is either stateful or stateless. If a widget can change — when a user interacts with it, for example — it’s stateful.\n\nA stateless widget never changes. Icon, IconButton, and Text are examples of stateless widgets. Stateless widgets subclass StatelessWidget."
      },
      {
        "name": "Stateful widget",
        "content":
            "A stateful widget is dynamic: for example, it can change its appearance in response to events triggered by user interactions or when it receives data. Checkbox, Radio, Slider, InkWell, Form, and TextField are examples of stateful widgets. Stateful widgets subclass StatefulWidget.\n\nA widget’s state is stored in a State object, separating the widget’s state from its appearance. The state consists of values that can change, like a slider’s current value or whether a checkbox is checked. When the widget’s state changes, the state object calls setState(), telling the framework to redraw the widget.\n\n"
      },
      {
        "name": "State Management libs",
        "content":
            "Altough you can handle state management manually using Flutter features such as setState() and Inherited Widgets, most people will generally opt for a package for state management. The official documentation (https://docs.flutter.dev/development/data-and-backend/state-mgmt/options) lists a lot of available popuplar options, for example: \n\n- Provider\n- Riverpod\n- Redux\n- BLoC\n- MobX"
      },
      {
        "name": "Persist simple data",
        "content":
            "If you have a relatively small collection of key-values to save, you can use the shared_preferences plugin.\n\nNormally, you would have to write native platform integrations for storing data on both iOS and Android. Fortunately, the shared_preferences plugin can be used to persist key-value data on disk. The shared preferences plugin wraps NSUserDefaults on iOS and SharedPreferences on Android, providing a persistent store for simple data."
      },
      {
        "name": "Persist complex data",
        "content":
            "If you are writing an app that needs to persist and query large amounts of data on the local device, consider using a database instead of a local file or key-value store. In general, databases provide faster inserts, updates, and queries compared to other local persistence solutions.\n\nFlutter apps can make use of the SQLite databases via the sqflite plugin available on pub.dev. This recipe demonstrates the basics of using sqflite to insert, read, update, and remove data about various Dogs.\n\nIf you are new to SQLite and SQL statements, review the SQLite Tutorial to learn the basics before completing this recipe."
      }
    ]
  },
  {
    "id": "theming",
    "name": "Theming",
    "pages": [
      {
        "name": "Creating a theme",
        "content":
            "To share colors and font styles throughout an app, use themes. You can either define app-wide themes, or use Theme widgets that define the colors and font styles for a particular part of the application. In fact, app-wide themes are just Theme widgets created at the root of an app by the MaterialApp.\n\nAfter defining a Theme, use it within your own widgets. Flutter’s Material widgets also use your Theme to set the background colors and font styles for AppBars, Buttons, Checkboxes, and more.\n\nTo share a Theme across an entire app, provide a ThemeData to the MaterialApp constructor.\n\nIf no theme is provided, Flutter creates a default theme for you.\n\ncontent_copy\nMaterialApp(\n  title: appName,\n  theme: ThemeData(\n    // Define the default brightness and colors.\n    brightness: Brightness.dark,\n    primaryColor: Colors.lightBlue[800],\n\n    // Define the default font family.\n    fontFamily: 'Georgia',\n\n    // Define the default `TextTheme`. Use this to specify the default\n    // text styling for headlines, titles, bodies of text, and more.\n    textTheme: const TextTheme(\n      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),\n      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),\n      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),\n    ),\n  ),\n  home: const MyHomePage(\n    title: appName,\n  ),\n);\n\nSee the ThemeData documentation to see all of the colors and fonts you can define.\n\n"
      },
      {
        "name": "Support light and dark themes",
        "content":
            "Modern Android & iOS smartphones now allow choosing beetween a light and a dark theme for everything system related. This is great, and the good news is that Flutter offers a very easy way to provide both themes in your app, the Flutter framework will then handle for you the theme switch when the theme mode changes. To do so just provide both theme in MaterialApp: \n\nreturn MaterialApp(\n  title: 'Flutter tips',\n  theme: lightThemeData,\n  darkTheme: darkThemeData,\n  home: const MyHomePage(),\n);"
      }
    ]
  },
  {
    "id": "navigation",
    "name": "Navigation",
    "pages": [
      {"name": "Navigator.of(context)", "content": "Navigate between pages"}
    ]
  },
  {
    "id": "data_exchange",
    "name": "Data exchange",
    "pages": [
      {
        "name": "Json serialization/deserialization",
        "content": "To simply do .toJson() and .fromJson()"
      }
    ]
  },
  {
    "id": "tests",
    "name": "Tests",
    "pages": [
      {
        "name": "Unit tests",
        "content":
            "How can you ensure that your app continues to work as you add more features or change existing functionality? By writing tests.\n\nUnit tests are handy for verifying the behavior of a single function, method, or class. The test package provides the core framework for writing unit tests, and the flutter_test package provides additional utilities for testing widgets.\n\n"
      },
      {
        "name": "Widget tests",
        "content":
            "In the introduction to unit testing recipe, you learned how to test Dart classes using the test package. To test widget classes, you need a few additional tools provided by the flutter_test package, which ships with the Flutter SDK.\n\nThe flutter_test package provides the following tools for testing widgets:\n\n- The WidgetTester allows building and interacting with widgets in a test environment.\n- The testWidgets() function automatically creates a new WidgetTester for each test case, and is used in place of the normal test() function.\n- The Finder classes allow searching for widgets in the test environment.\n- Widget-specific Matcher constants help verify whether a Finder locates a widget or multiple widgets in the test environment.\n\nIf this sounds overwhelming, don’t worry. Learn how all of these pieces fit together throughout this recipe, which uses the following steps:\n\n- Add the flutter_test dependency.\n- Create a widget to test.\n- Create a testWidgets test.\n- Build the widget using the WidgetTester.\n- Search for the widget using a Finder.\n- Verify the widget using a Matcher.\n"
      },
      {
        "name": "Golden tests",
        "content":
            "Golden tests are widget tests are on steroids. The idea of golden tests is simple. It starts with 2 phases:\n\nGenerating the sample image to compare.\nComparing the rendered screen/widget with the sample image.\nThe simple idea prevents regressions in your UI code. For example, when you change a piece of code in a widget, the tests would fail if the change was visible on the screen."
      },
      {
        "name": "Integration tests",
        "content":
            "Unit tests and widget tests are handy for testing individual classes, functions, or widgets. However, they generally don’t test how individual pieces work together as a whole, or capture the performance of an application running on a real device. These tasks are performed with integration tests.\n\nIntegration tests are written using the integration_test package, provided by the SDK.\n\n"
      }
    ]
  }
];
