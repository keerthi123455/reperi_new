import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';
import 'theme/app_colors.dart';
import 'theme/theme_controller.dart';

void main() {
  runApp(const ReperiGarageApp());
}

class ReperiGarageApp extends StatefulWidget {
  const ReperiGarageApp({super.key});

  @override
  State<ReperiGarageApp> createState() => _ReperiGarageAppState();
}

class _ReperiGarageAppState extends State<ReperiGarageApp> {
  @override
  void initState() {
    super.initState();
    // Rebuilds the whole app on light/dark toggle so every widget's next
    // build() re-reads the (mutated) AppColors fields — see
    // theme_controller.dart and app_colors.dart for how the repaint works.
    themeController.addListener(_onThemeChanged);
  }

  void _onThemeChanged() => setState(() {});

  @override
  void dispose() {
    themeController.removeListener(_onThemeChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = themeController.isDark;
    final brightness = isDark ? Brightness.dark : Brightness.light;

    return MaterialApp(
      title: 'Reperi Garage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: AppColors.ink,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.accent,
          brightness: brightness,
        ),
        textTheme: GoogleFonts.manropeTextTheme(
          (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
        ),
        splashFactory: InkRipple.splashFactory,
      ),
      // Not `const` — this must rebuild (and its whole subtree with it)
      // whenever the theme toggles, so every widget re-reads the current
      // AppColors values. A `const` HomeScreen here gets canonicalized and
      // Flutter skips rebuilding it entirely on an ancestor rebuild, which
      // is why the toggle previously did nothing below the app bar.
      home: HomeScreen(),
    );
  }
}
