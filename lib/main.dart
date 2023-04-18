import 'package:clean_architecture_pattern/app_theme.dart';
import 'package:clean_architecture_pattern/application/core/services/theme_service.dart';
import 'package:clean_architecture_pattern/application/pages/advice/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => ThemeService(),
      child: const AdvicerApp()));
}

class AdvicerApp extends StatelessWidget {
  const AdvicerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicerPageWrapperProvider(),
        );
      },
    );
  }
}
