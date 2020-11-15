import 'package:flutter_test/flutter_test.dart';
import 'package:nuntium/main.dart';

void main() {
  testWidgets('App launches smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(Nuntium());

    expect(find.text('nuntium'), findsOneWidget);
  });
}
