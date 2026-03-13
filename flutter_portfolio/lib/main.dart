import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portfolio/l10n/app_localizations.dart';

import 'pages/home_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    _PortfolioAppState? state = context
        .findAncestorStateOfType<_PortfolioAppState>();
    state?.changeLanguage(newLocale);
  }

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  Locale _locale = const Locale('en');

  void changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Esteban Rodriguez - Developer Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      locale: _locale,
      supportedLocales: const [Locale('en'), Locale('es')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const HomePage(),
    );
  }
}
