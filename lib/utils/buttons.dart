import 'package:flutter/cupertino.dart';

import 'colors.dart';
import 'texts.dart'; // Optional, for default strings

class Buttons {
  /// ✅ Primary filled button (green background, white text)
  static Widget primary({
    required VoidCallback onPressed,
    String text = "Tasdiqlash",
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    double borderRadius = 12,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: AppColors.inbazarGreen,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.button,
          ),
        ),
      ),
    );
  }

  /// ✅ Outlined button (green border + green text)
  static Widget outlined({
    required VoidCallback onPressed,
    String text = "Qaytish",
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    double borderRadius = 12,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.inbazarGreen, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.button.copyWith(color: AppColors.inbazarGreen),
          ),
        ),
      ),
    );
  }

  /// ✅ Text-only button (like a link)
  static Widget text({
    required VoidCallback onPressed,
    String text = "Takrorlash",
    EdgeInsetsGeometry padding = const EdgeInsets.all(8),
  }) {
    return CupertinoButton(
      padding: padding,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.title,
      ),
    );
  }

  /// ✅ Disabled button (non-tappable, grayed out)
  static Widget disabled({
    String text = "Tasdiqlash",
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    double borderRadius = 12,
  }) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.cloudGray,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.button.copyWith(
            color: AppColors.charcoalGray.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
