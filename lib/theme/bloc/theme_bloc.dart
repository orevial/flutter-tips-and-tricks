import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_bloc.freezed.dart';

part 'theme_event.dart';

part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState.theme(ThemeMode.system)) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        read: (event) => _onRead(event, emit),
        update: (event) => _onUpdate(event, emit),
      ),
    );

    add(const ThemeEvent.read());
  }

  Future<void> _onRead(
    _Read event,
    Emitter<ThemeState> emit,
  ) async {
    final mode = await SharedPreferences.getInstance()
        .then((prefs) => prefs.getString('theme_mode'));
    emit(ThemeState.theme(_themeModeFromString(mode)));
  }

  Future<void> _onUpdate(
    _Update event,
    Emitter<ThemeState> emit,
  ) async {
    await SharedPreferences.getInstance()
        .then((prefs) => prefs.setString('theme_mode', event.mode.name));
    emit(ThemeState.theme(event.mode));
  }

  ThemeMode _themeModeFromString(String? value) {
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == value,
      orElse: () => ThemeMode.system,
    );
  }
}
