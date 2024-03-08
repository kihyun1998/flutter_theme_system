enum ButtonSize {
  small,
  small40,
  samll50,
  medium,
  large,
  veryLarge,
  superLarge;

  double getSize() {
    switch (this) {
      case ButtonSize.small:
        return 30;
      case ButtonSize.small40:
        return 40;
      case ButtonSize.samll50:
        return 50;
      case ButtonSize.medium:
        return 60;
      case ButtonSize.large:
        return 100;
      case ButtonSize.veryLarge:
        return 130;
      case ButtonSize.superLarge:
        return 250;
    }
  }
}
