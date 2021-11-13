import 'package:first_app/routes.dart';
import 'package:first_app/screens/home/home_screen.dart';
import 'package:first_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"),
      ],
      locale: Locale("fa", "IR") ,


      theme: theme(),

      initialRoute: HomeScreen.routeName,
      routes:routes ,
    );
  }
}
