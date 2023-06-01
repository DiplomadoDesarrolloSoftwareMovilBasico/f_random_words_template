import 'package:f_template_juego_taller1/ui/widgets/core_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CoreWidget Test', (WidgetTester tester) async {
    // Define the initial state of the widget
    const initialText = 'Test';
    const initialEnabled = true;

    // Define a variable to capture the callback argument
    int? callbackValue;

    // Build the CoreWidget
    await tester.pumpWidget(MaterialApp(
      home: CoreWidget(
        text: initialText,
        enabled: initialEnabled,
        callback: (value) => callbackValue = value,
      ),
    ));

    // Verify that the initial state is correct
    expect(find.text(initialText), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(2));

    // Verify that the buttons are enabled and can be tapped
    final buttonFinder = find.byType(ElevatedButton);
    expect(tester.widget<ElevatedButton>(buttonFinder.first).enabled, true);
    expect(tester.widget<ElevatedButton>(buttonFinder.last).enabled, true);

    // Tap the first button
    await tester.tap(buttonFinder.first);
    expect(callbackValue, 0);

    // Tap the second button
    await tester.tap(buttonFinder.last);
    expect(callbackValue, 1);

    // Change the enabled state of the widget
    await tester.pumpWidget(MaterialApp(
      home: CoreWidget(
        text: initialText,
        enabled: false,
        callback: (value) => callbackValue = value,
      ),
    ));

    // Verify that the buttons are disabled and cannot be tapped
    expect(tester.widget<ElevatedButton>(buttonFinder.first).enabled, false);
    expect(tester.widget<ElevatedButton>(buttonFinder.last).enabled, false);
  });
}
