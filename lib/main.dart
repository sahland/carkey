import 'package:carkey/carkey_app.dart';
import 'package:carkey/features/features.dart';
import 'package:carkey/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: '.env');
  final prefs = await SharedPreferences.getInstance();
  final themeStorage = ThemeStorage(prefs: prefs);
  final themeRepository = ThemeRepository(themeStorage: themeStorage);
  final themeController = ThemeController(themeRepository: themeRepository);
  runApp(CarkeyApp(themeController: themeController));
}
