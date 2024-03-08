import 'package:flutter_theme_system/style/foundation/app_theme.dart';
import 'package:flutter_theme_system/style/theme/dart_theme.dart';
import 'package:flutter_theme_system/style/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }
}
