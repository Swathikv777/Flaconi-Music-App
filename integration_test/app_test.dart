import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart' as app;
import 'page_objects/albums_page.dart';
import 'page_objects/landing_page.dart';
import 'page_objects/search_results_page.dart';
import 'page_objects/top_albums_detail_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Music app integration test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    final landingPage = LandingPage(tester);

    //Verifying the elements in landing page
    await landingPage.verifyPageElements();

    // Search part
    await landingPage.tapSearchButton();
    final searchResultsPage = SearchResultsPage(tester);
    await searchResultsPage.verifyNewPage();
    await searchResultsPage.enterSearchText('Test');
    await landingPage.tapSearchButton();

    //Validating the searchresults and grid view
    await searchResultsPage.verifyGridView();
    await searchResultsPage.verifyCardWidgets();
    await searchResultsPage.verifySearchResults();

    //Moving to top albums view
    await searchResultsPage.tapCardAtIndex(1);
    final albumsPage = AlbumsPage(tester);
    await albumsPage.verifyAlbumPage();
    await albumsPage.verifyAlbumGridView();
    await albumsPage.verifyAlbumsPageWidgets();
    await albumsPage.tapFirstCard();

    //Moving to album details view
    final topAlbumsDetailsPage = TopAlbumsDetailsPage(tester);
    await topAlbumsDetailsPage.verifyDetailPage();
  });
}
