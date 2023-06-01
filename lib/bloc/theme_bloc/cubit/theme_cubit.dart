import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial(ThemeMode.light));

  void switchTheme(ThemeMode theme) {
    switch (theme) {
      case ThemeMode.light:
        emit(ThemeLight(ThemeMode.light));
        break;
      case ThemeMode.dark:
        emit(ThemeDark(ThemeMode.dark));
        break;
      default:
    }
  }
}
