part of 'app_theme.dart';

class AppColor {
  const AppColor({
    required this.background,
    required this.surface,
    required this.text,
    required this.hint,
    required this.hintContainer,
    required this.onHintContainer,
    required this.inactive,
    required this.inactiveContainer,
    required this.onInactiveContainer,
    required this.primary,
    required this.onPrimary,
    required this.selectedIconColor,
    required this.unSelectedIconColor,
    required this.bar,
  });

  /// Surface
  final Color background;
  final Color surface;

  /// Text
  final Color text;

  /// Hint
  final Color hint;
  final Color hintContainer;
  final Color onHintContainer;

  /// Inactive
  final Color inactive;
  final Color inactiveContainer;
  final Color onInactiveContainer;

  final Color primary;
  final Color onPrimary;

  ///Icon
  final Color selectedIconColor;
  final Color unSelectedIconColor;

  final Color bar;
}
