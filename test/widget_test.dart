import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:reperi_garage/main.dart';

void main() {
  testWidgets('Home screen renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const ReperiGarageApp());
    await tester.pump();

    expect(find.text('REPERI'), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
