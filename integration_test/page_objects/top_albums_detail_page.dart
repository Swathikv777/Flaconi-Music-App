import 'package:flutter_test/flutter_test.dart';
import 'package:music_app/presentation/pages/album_details_page.dart';
import '../base_page.dart';

class TopAlbumsDetailsPage extends BasePage {
  TopAlbumsDetailsPage(super.tester);

  Future<void> verifyDetailPage() async {
    await verifyWidgetPresent(find.byType(AlbumDetailsPage));
  }
}
