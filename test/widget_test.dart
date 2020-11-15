import 'package:flutter_test/flutter_test.dart';
import 'package:nuntium/ui/widgets/buttons.dart' as Buttons;

void main() {
  testWidgets('TextButton smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(Buttons.TextButton(onPressed: () {}, value: 'Hello World',));

    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets('RoundedButton smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(Buttons.RoundedButton(onPressed: () {}, value: 'Hello World',));

    expect(find.text('HELLO WORLD'), findsOneWidget);
  });
}
