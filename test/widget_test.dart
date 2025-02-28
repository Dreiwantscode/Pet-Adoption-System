// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Pet adoption app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PetAdoptionApp());

    // Verify that the title is present
    expect(find.text('Adopt a shelter cat or dog'), findsOneWidget);

    // Verify that filter buttons exist
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Cats'), findsOneWidget);
    expect(find.text('Dogs'), findsOneWidget);

    // Verify that some pets are displayed
    expect(find.text('ALICE'), findsOneWidget);
    expect(find.text('MATEO'), findsOneWidget);
    expect(find.text('MITA'), findsOneWidget);
  });
}
