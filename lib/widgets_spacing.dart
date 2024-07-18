library widgets_spacing;

import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

/// Default spacing value.
const double kDefaultSpacing = 4.0;

/// Returns the calculated spacing based on the given size multiplier.
double spacing([num size = 1]) => size * kDefaultSpacing;

/// Returns a list of widgets with spacing in between each widget.
///
/// [children] is the iterable of widgets to be spaced.
/// [size] is the multiplier for the default spacing.
List<Widget> widgetsSpacing(
  Iterable<Widget> children, {
  num size = 1,
}) {
  return children
      .expand((Widget widget) sync* {
        yield Gap(spacing(size));
        yield widget;
      })
      .skip(1)
      .toList();
}

/// Extension on `List<Widget?>` to add spacing between non-null widgets.
extension WidgetsSpacingExt on List<Widget?> {
  /// Returns a list of non-null widgets with spacing in between each widget.
  ///
  /// [size] is the multiplier for the default spacing.
  List<Widget> withSpace([num size = 1]) {
    final List<Widget> children = whereType<Widget>().toList();

    return widgetsSpacing(
      children,
      size: size,
    );
  }
}
