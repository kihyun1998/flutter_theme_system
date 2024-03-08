import 'package:flutter_theme_system/style/foundation/app_theme.dart';
import 'package:flutter_theme_system/style/resources/font.dart';
import 'package:flutter_theme_system/style/resources/palette.dart';

class DarkTheme implements AppTheme {
  @override
  AppMode mode = AppMode.dark;

  @override
  AppColor color = AppColor(
    surface: Palette.grey750,
    background: Palette.grey800,
    text: Palette.grey100,
    hint: Palette.grey500,
    hintContainer: Palette.grey770,
    onHintContainer: Palette.grey350,
    inactive: Palette.grey500,
    inactiveContainer: Palette.grey600,
    onInactiveContainer: Palette.grey400,
    primary: Palette.navy,
    onPrimary: Palette.white,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
