import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgets_spacing/widgets_spacing.dart';

void main() {
  test('Have a gap', () {
    final children = [
      const Text('2'),
      const Text('2'),
    ].withSpace();

    expect(children.length, 3);
  });
}
