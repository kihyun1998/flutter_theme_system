import 'package:flutter_theme_system/style/foundation/app_theme.dart';
import 'package:flutter_theme_system/style/resources/font.dart';
import 'package:flutter_theme_system/style/resources/palette.dart';

class DarkTheme implements AppTheme {
  @override
  AppMode mode = AppMode.dark;

  @override
  AppColor color = AppColor(
      surface: Palette.oneDarkSurface,
      background: Palette.oneDarkBackground,
      text: Palette.oneDarkText,
      hint: Palette.grey500,
      hintContainer: Palette.oneDarkHintContainer,
      onHintContainer: Palette.oneDarkOnHintContainer,
      inactive: Palette.grey500,
      inactiveContainer: Palette.grey600,
      onInactiveContainer: Palette.grey400,
      primary: Palette.blue,
      onPrimary: Palette.white,
      selectedIconColor: Palette.oneDarkSelectIcon,
      unSelectedIconColor: Palette.oneDarkUnSelectIcon,
      bar: Palette.oneDarkBar);

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
