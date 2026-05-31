import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_basic_widgets/main.dart';

void main() {
  testWidgets('App loads and shows navigation list', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that our app shows the main title in the AppBar.
    expect(find.text('Flutter Basic Widgets'), findsOneWidget);

    // Verify that the list items are present.
    expect(find.text('01. MaterialApp & Scaffold'), findsOneWidget);
    expect(find.text('02. Text & Icon'), findsOneWidget);
  });
}
