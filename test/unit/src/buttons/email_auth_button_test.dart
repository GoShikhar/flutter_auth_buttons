import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check the default value of', () {
    final MobileAuthButton MobileAuthButton =
        MobileAuthButton(onPressed: () {});
    test('text', () {
      expect(MobileAuthButton.text, 'Sign in with Email');
    });
    test('darkMode', () {
      expect(MobileAuthButton.darkMode, false);
    });
    test('Button type', () {
      expect(MobileAuthButton.style!.buttonType, null);
    });
    test('rtl', () {
      expect(MobileAuthButton.rtl, false);
    });
  });
}
