import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taskie_appp/views/splash_screen.dart';

void main() {
  testWidgets('SplashScreen has a login and register button',
      (WidgetTester tester) async {
    // Construa o app e ative um frame.
    await tester.pumpWidget(const MaterialApp(home: Splashscreen()));

    // Verifique se a SplashScreen contém os widgets necessários.
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Cadastro'), findsOneWidget);
  });
}
