import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gap/gap.dart';
import 'package:widgets_spacing/widgets_spacing.dart';

void main() {
  group('widgets_spacing', () {
    test('spacing function returns correct value', () {
      expect(spacing(), 4.0);
      expect(spacing(2), 8.0);
    });

    testWidgets('widgetsSpacing inserts gaps correctly',
        (WidgetTester tester) async {
      final widgets = [
        const Text('First'),
        const Text('Second'),
        const Text('Third'),
      ];

      final spacedWidgets = widgetsSpacing(widgets, size: 2);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: spacedWidgets),
        ),
      );

      // Verify that there are gaps between the widgets
      expect(find.byType(Gap), findsNWidgets(2));
      expect(find.text('First'), findsOneWidget);
      expect(find.text('Second'), findsOneWidget);
      expect(find.text('Third'), findsOneWidget);
    });

    testWidgets('withSpace extension method adds gaps correctly',
        (WidgetTester tester) async {
      final widgets = [
        const Text('First'),
        const Text('Second'),
        const Text('Third'),
      ];

      final spacedWidgets = widgets.withSpace(2);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: spacedWidgets),
        ),
      );

      // Verify that there are gaps between the widgets
      expect(find.byType(Gap), findsNWidgets(2));
      expect(find.text('First'), findsOneWidget);
      expect(find.text('Second'), findsOneWidget);
      expect(find.text('Third'), findsOneWidget);
    });
  });
}
