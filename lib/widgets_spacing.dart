library widgets_spacing;

import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

const kDefaultSpacing = 8.0;

double spacing([num size = 1]) => size * kDefaultSpacing;

List<Widget> widgetsSpacing(
  Iterable<Widget> children, {
  num size = 1,
}) {
  return children
      .expand((widget) sync* {
        yield Gap(spacing(size));

        yield widget;
      })
      .skip(1)
      .toList();
}

extension WidgetsSpacingExt on List<Widget?> {
  List<Widget> withSpace([num size = 1]) {
    final children = whereType<Widget>().toList();

    return widgetsSpacing(
      children,
      size: size,
    );
  }
}
