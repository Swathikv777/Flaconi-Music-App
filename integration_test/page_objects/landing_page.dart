import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../base_page.dart';

class LandingPage extends BasePage {
  LandingPage(super.tester);

  Finder get musicAppText => find.text('Music App');
  Finder get noAlbumsText => find.text('No Albums added yet');
  Finder searchButton = find.byIcon(Icons.search);

  Future<void> verifyPageElements() async {
    await verifyWidgetPresent(musicAppText);
    await verifyWidgetPresent(noAlbumsText);
    await verifyWidgetPresent(searchButton);
  }

  Future<void> tapSearchButton() async {
    await tap(searchButton);
  }
}
