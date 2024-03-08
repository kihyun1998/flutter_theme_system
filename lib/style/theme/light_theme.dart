import 'package:flutter_theme_system/style/foundation/app_theme.dart';
import 'package:flutter_theme_system/style/resources/font.dart';
import 'package:flutter_theme_system/style/resources/palette.dart';

class LightTheme implements AppTheme {
  @override
  AppMode mode = AppMode.light;

  @override
  AppColor color = AppColor(
    surface: Palette.grey200,
    background: Palette.white, //배경색
    text: Palette.black,
    subtext: Palette.grey700,
    hint: Palette.grey500,
    hintContainer: Palette.grey150,
    onHintContainer: Palette.grey500,
    inactive: Palette.grey400,
    inactiveContainer: Palette.grey250,
    onInactiveContainer: Palette.white,
    primary: Palette.blue,
    onPrimary: Palette.white,
    secondary: Palette.ivoryPrimary,
    onSecondary: Palette.white,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
