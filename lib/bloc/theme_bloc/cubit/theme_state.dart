part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState(this.theme);

  final ThemeMode theme;

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial(super.theme);
}

class ThemeDark extends ThemeState {
  const ThemeDark(super.theme);
}

class ThemeLight extends ThemeState {
  const ThemeLight(super.theme);
}
