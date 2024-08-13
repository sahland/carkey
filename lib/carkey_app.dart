import 'package:carkey/features/features.dart';
import 'package:carkey/router/router.dart';
import 'package:carkey/uikit/uikit.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class CarkeyApp extends StatefulWidget {
  const CarkeyApp({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  State<CarkeyApp> createState() => _CarkeyAppState();
}

class _CarkeyAppState extends State<CarkeyApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
      themeController: widget.themeController,
      child: ThemeBuilder(
        builder: (_, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            routerConfig: _router.config(),
          );
        },
      ),
    );
  }
}
