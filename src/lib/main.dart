import 'package:flutter/material.dart';
import 'package:nuance/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(NuanceApp());
}

class NuanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English
        const Locale('es', ''), // Espanhol
        const Locale('pt', 'BR'), // Português do Brasil
      ],
      title: 'Nuance',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Open Sans',
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
