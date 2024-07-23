import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../base_page.dart';
import 'package:music_app/presentation/pages/search_page.dart';

class SearchResultsPage extends BasePage {
  SearchResultsPage(super.tester);

  Future<void> verifyNewPage() async {
    await verifyWidgetPresent(find.byType(SearchPage));
  }

  Finder searchTextField = find.byWidgetPredicate((Widget widget) =>
      widget is TextField &&
      widget.decoration?.hintText == 'Search for albums');

  Future<void> enterSearchText(String text) async {
    await enterText(searchTextField, text);
  }

  Finder gridView = find.byType(GridView);
  Finder cardWidgets = find.byType(Card);

  Future<void> initFinders() async {
    cardWidgets = find.descendant(
      of: gridView,
      matching: find.byType(Card),
    );
  }

  Future<void> verifyGridView() async {
    await verifyWidgetPresent(gridView);
  }

  Future<void> verifyCardWidgets() async {
    await initFinders();
    expect(cardWidgets, findsWidgets);
  }

  Finder resultText = find.textContaining('Test');

  Future<void> verifySearchResults() async {
    expect(resultText, findsWidgets);
  }

  Finder getCardAtIndex(int index) {
    return cardWidgets.at(index);
  }

  Future<void> tapCardAtIndex(int index) async {
    await initFinders();
    final Finder card = getCardAtIndex(index);
    await tap(card);
    await tester.pumpAndSettle();
  }
}
