import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unidade4/main.dart';

void main() {
  testWidgets('App navigation smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Tela Inicial'), findsOneWidget);
    expect(find.text('Toque para Expandir'), findsOneWidget);
    expect(find.text('Tela 1'), findsOneWidget);
    expect(find.text('Tela 2'), findsOneWidget);
    expect(find.text('Tela 3'), findsOneWidget);
    await tester.tap(find.text('Tela 1'));
    await tester.pumpAndSettle();
    expect(find.text('Esta é a Tela 1'), findsOneWidget);
  });

  testWidgets('Hero animation test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.text('Toque para Expandir'));
    await tester.pumpAndSettle();
    expect(find.text('Card Expandido!'), findsOneWidget);
    expect(
      find.text('Esta tela foi criada usando Hero Animation'),
      findsOneWidget,
    );
    await tester.tap(find.text('Voltar'));
    await tester.pumpAndSettle();
    expect(find.text('Tela Inicial'), findsOneWidget);
  });
}
