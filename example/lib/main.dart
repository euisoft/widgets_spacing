import 'package:flutter/material.dart';
import 'package:widgets_spacing/widgets_spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widgets Spacing Example')),
        body: Padding(
          padding: EdgeInsets.all(spacing(4)),
          child: Column(
            children: [
              const Text('First'),
              const Text('Second'),
              const Text('Third'),
            ].withSpace(2),
          ),
        ),
      ),
    );
  }
}
