
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_connect/http/src/http/mock/http_request_mock.dart';
import 'package:http/http.dart';
import 'package:wallpaper_application_assessment/main.dart';


void main() {

  testWidgets('Test load Splash', (final widgetTester) async {
    await widgetTester.pumpWidget(const MainApp());

   // await widgetTester.pumpWidget( SplashPage());
  // await widgetTester.pumpAndSettle();
  // expect(find.byKey(const Key('AppLoadFullState')),findsOneWidget);

  },);
}
