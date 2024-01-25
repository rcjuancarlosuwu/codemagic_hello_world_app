import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world_app/hello_world/hello_world.dart';
import '../../helpers/helpers.dart';

void main() {
  group('HelloWorldPage', () {
    testWidgets('renders HelloWorldText', (tester) async {
      await tester.pumpApp(const HelloWorldPage());
      expect(find.byType(HelloWorldText), findsOneWidget);
    });
  });
}
