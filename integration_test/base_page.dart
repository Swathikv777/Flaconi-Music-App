import 'package:flutter_test/flutter_test.dart';

class BasePage {
  final WidgetTester tester;

  BasePage(this.tester);

// Tap on a widget
  Future<void> tap(Finder finder) async {
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

//Enter text into a widget
  Future<void> enterText(Finder finder, String text) async {
    await tester.enterText(finder, text);
    await tester.pumpAndSettle();
  }

  // Verify widget is present
  Future<void> verifyWidgetPresent(Finder finder) async {
    expect(finder, findsOneWidget);
  }
}
