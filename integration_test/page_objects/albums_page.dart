import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_app/presentation/pages/top_albums_page.dart';
import '../base_page.dart';

class AlbumsPage extends BasePage {
  AlbumsPage(super.tester);

  Future<void> verifyAlbumPage() async {
    await verifyWidgetPresent(find.byType(TopAlbumPage));
  }

  Finder albumsPageGridView = find.byType(GridView);
  Finder albumsPageWidgets = find.byType(Card);

  Future<void> verifyAlbumGridView() async {
    await verifyWidgetPresent(albumsPageGridView);
  }

  Future<void> initFinders() async {
    albumsPageWidgets = find.descendant(
      of: albumsPageGridView,
      matching: find.byType(Card),
    );
  }

  Future<void> verifyAlbumsPageWidgets() async {
    await initFinders();
    expect(albumsPageWidgets, findsWidgets);
  }

  Future<void> tapFirstCard() async {
    await initFinders();
    final Finder firstCard = albumsPageWidgets.first;
    await tester.tap(firstCard);
    await tester.pumpAndSettle();
  }
}
