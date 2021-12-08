import 'package:flutter/material.dart';
import 'package:libreria/pages/home/home.dart';
import 'package:flutter/services.dart';
import 'package:libreria/pages/login/login.dart';
import 'package:libreria/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Libreria',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
