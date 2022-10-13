import 'package:flutters_tips_and_tricks/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);
