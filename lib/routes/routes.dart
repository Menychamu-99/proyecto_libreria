import 'package:flutter/material.dart';
// import 'package:libreria/models/book.dart';
import 'package:libreria/pages/home/home.dart';
// import 'package:libreria/pages/home/widgets/book_item.dart';
// import 'package:libreria/pages/home/widgets/book_staggered_gridview.dart';
import 'package:libreria/pages/login/login.dart';
import 'package:libreria/pages/login/principal.dart';
import 'package:libreria/pages/login/registro.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  //'usuarios': (_) => UsuariosPages(),
  'login': (_) => LoginPage(),
  'register': (_) => RegistroPage(),
  'home': (_) => HomePage(),
  // 'terror': (_) => TerrorPage(),
  // 'fantasia': (_) => FantasiaPage(),
  // 'romance': (_) => RomancePage(),
  // 'infantil': (_) => InfantilesPage(),
  // 'suspenso': (_) => SuspensoPagen(),
  'principal': (_) => PrincipalPage(),
  //'loading': (_) => LoadingPage(),
};
