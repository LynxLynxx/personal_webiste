import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial(ThemeMode.light));

  void switchTheme(ThemeMode theme) {
    switch (theme) {
      case ThemeMode.light:
        emit(const ThemeLight(ThemeMode.light));
        break;
      case ThemeMode.dark:
        emit(const ThemeDark(ThemeMode.dark));
        break;
      default:
    }
  }
}
