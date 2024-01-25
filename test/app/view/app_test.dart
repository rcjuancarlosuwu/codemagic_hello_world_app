import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world_app/app/app.dart';
import 'package:hello_world_app/hello_world/hello_world.dart';

void main() {
  group('App', () {
    testWidgets('renders HelloWorldPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HelloWorldPage), findsOneWidget);
    });
  });
}
