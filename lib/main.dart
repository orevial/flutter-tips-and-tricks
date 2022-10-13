import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/app.dart';
import 'package:flutters_tips_and_tricks/di/di_initializer.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const FlutterTipsAndTricks());
}
