import 'package:flutter/material.dart';
import 'package:nuance/splashscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart';

final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  _initializeNotificationSettings();
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

_initializeNotificationSettings() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initializationSettingsAndroid =
      AndroidInitializationSettings('app_logo');
  final initializationSettingsIOS = IOSInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: true,
    requestSoundPermission: false,
    onDidReceiveLocalNotification:
        (int id, String title, String body, String payload) async {
      //
    },
  );
  final initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  await _flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onSelectNotification: (String payload) async {
      //
    },
  );

  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'alarm-android',
    'alarm-android',
    'Channel for Nuance notifications',
  );

  var iOSPlatformChannelSpecifics = IOSNotificationDetails(
    presentAlert: false,
    presentBadge: true,
    presentSound: false,
  );

  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );

  // O alarme toca diariamente às 9 da manhã.
  await _flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Nuancé',
      'Good morning! How about starting your day off with Nuancé?',
      new TZDateTime(
        getLocation('America/Sao_Paulo'),
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day + 1,
        9,
      ),
      platformChannelSpecifics);
}
