import 'package:carkey/features/features.dart';
import 'package:flutter/material.dart';

typedef ThemeWidgetBuilder = Widget Function(
    BuildContext context, ThemeMode themeMode);

class ThemeBuilder extends StatefulWidget {
  const ThemeBuilder({super.key, required this.builder});

  final ThemeWidgetBuilder builder;

  @override
  State<ThemeBuilder> createState() => _ThemeBuilderState();
}

class _ThemeBuilderState extends State<ThemeBuilder> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeInherited.of(context).themeMode,
      builder: (
        builderContext,
        themeMode,
        _,
      ) =>
          widget.builder(builderContext, themeMode),
    );
  }
}
