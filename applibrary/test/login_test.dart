import 'package:applibrary/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('LoginScreen should not throw any exceptions', (tester) async {
  await tester.pumpWidget(LoginScreen());

  // Try to catch any exceptions that occur.
  try {
    // Perform your test here.
  } catch (exception, stackTrace) {
    // Print the exception and stack trace.
    print(exception);
    print(stackTrace);

    // Fail the test.
    expect(true, false);
  }
});
}