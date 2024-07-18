# Widgets Spacing Library

The `widgets_spacing` library provides utility functions and extensions for adding consistent spacing between widgets in a Flutter application. This library uses the `gap` package to insert gaps between widgets.

## Features

- **Custom Spacing:** Easily define spacing between widgets with a configurable multiplier.
- **List Extension:** Add spacing to a list of widgets using an extension method.
- **Flexible Spacing:** Specify different sizes for gaps between widgets.

## Installation

Add the following line to your `pubspec.yaml` file under dependencies:

```yaml
dependencies:
  widgets_spacing:
    git:
      url: https://github.com/your_username/widgets_spacing.git
      ref: main
```

Then, run `flutter pub get` to fetch the package.

## Usage

### Import the Library

```dart
import 'package:widgets_spacing/widgets_spacing.dart';
```

### Basic Usage

The `spacing` function returns the default spacing (8.0) multiplied by the given size.

```dart
final double defaultSpacing = spacing(); // 4.0
final double doubleSpacing = spacing(2); // 8.0
```

### Adding Spacing Between Widgets

Use the `widgetsSpacing` function to add gaps between widgets.

```dart
final widgets = [
  Text('First'),
  Text('Second'),
  Text('Third'),
];

final spacedWidgets = widgetsSpacing(widgets, size: 2);

// Use the spacedWidgets in your widget tree
Column(
  children: spacedWidgets,
);
```

### Extension Method

Use the `withSpace` extension method on a list of widgets to add gaps.

```dart
final widgets = [
  Text('First'),
  Text('Second'),
  Text('Third'),
];

final spacedWidgets = widgets.withSpace(2);

// Use the spacedWidgets in your widget tree
Column(
  children: spacedWidgets,
);

Row(
  children: spacedWidgets,
);
```

## Example

Here's a complete example demonstrating how to use the `widgets_spacing` library:

```dart
import 'package:flutter/material.dart';
import 'package:widgets_spacing/widgets_spacing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Widgets Spacing Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('First'),
              Text('Second'),
              Text('Third')
            ].withSpace(2),
          ),
        ),
      ),
    );
  }
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Feel free to adjust the installation instructions if your package is already available on `pub.dev`. If it is, you can replace the installation section with the standard `pub.dev` installation instructions:

```
dependencies:
  widgets_spacing: ^1.0.0
```

And then run:

```sh
flutter pub get
```

This version of the README should be suitable for publication on `pub.dev`.
