// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/shared/auth_button.dart';
import 'package:auth_buttons/src/shared/auth_colors.dart';
import 'package:auth_buttons/src/shared/auth_button_style.dart';
import 'package:auth_buttons/src/shared/auth_icons.dart';
import 'package:auth_buttons/src/shared/auth_style.dart';
import 'package:flutter/material.dart';

class MobileAuthButton extends AuthButton {
  const MobileAuthButton({
    Key? key,
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    String text = 'Sign in with Mobile',
    bool darkMode = false,
    bool rtl = false,
    bool isLoading = false,
    bool alignLeft = false,
    AuthButtonStyle? style,
  }) : super(
          key: key ?? const ValueKey<String>('MobileAuthButton'),
          onPressed: onPressed,
          onLongPress: onLongPress,
          text: text,
          darkMode: darkMode,
          rtl: rtl,
          alignLeft: alignLeft,
          isLoading: isLoading,
          style: style,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style!.buttonType == AuthButtonType.secondary) return Colors.teal;
    if (style!.buttonType != AuthButtonType.secondary) return Colors.teal[200];
  }

  @override
  String getIconUrl() {
    if (style!.iconType == AuthIconType.outlined)
      return darkMode ? AuthIcons.emailWhite[1] : AuthIcons.sim[0];
    if (style!.iconType == AuthIconType.secondary) return AuthIcons.sim[0];
    return (style!.buttonType == AuthButtonType.secondary)
        ? AuthIcons.sim[0]
        : AuthIcons.emailWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style!.buttonType == AuthButtonType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.teal);
    if (style!.iconType == AuthIconType.secondary)
      return style!.buttonColor ??
          (darkMode ? AuthColors.darkMode : Colors.white);
    return style!.buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.teal);
  }

  @override
  TextStyle getTextStyle() {
    if (style!.iconType == AuthIconType.secondary &&
        style!.buttonType != AuthButtonType.secondary)
      return TextStyle(
        color: darkMode ? Colors.white : Colors.teal[900],
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
