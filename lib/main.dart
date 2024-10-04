import 'package:flutter/material.dart';
import 'package:food/pages/recipe_page.dart';
import 'package:food/pages/recipes_page.dart';
import 'package:food/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: '/',
        routes: {
          '/': (context) => const RecipesPage(),
          '/recipePage': (context) => const RecipePage(),
        });
  }
}
