import 'package:app/models/menu_options.dart';
import 'package:app/screens/biblioteca_screen.dart';
import 'package:app/screens/card_screen.dart';
import 'package:app/screens/home_screen_pueba.dart';
import 'package:app/screens/informacion_screen.dart';
import 'package:app/screens/noticias_screen.dart';
import 'package:app/screens/pensum_screen.dart';
import 'package:app/screens/repositorios_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: 'Home',
      name: 'Home screen',
      screen: HomeScreenP(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'HomeP',
      name: 'Home Screen Prueba',
      screen: HomeScreenP(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Biblioteca',
      name: 'Biblioteca',
      screen: BibliotecaScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Informacion',
      name: 'Informaciones',
      screen: InformacionScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Pensum',
      name: 'Pensum',
      screen: PensumScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Noticias',
      name: 'Noticias',
      screen: NoticiasScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Repositorios',
      name: 'Repositorios',
      screen: RepositorioScreen(),
      icon: Icons.add_ic_call_outlined,
    ),
    MenuOptions(
      route: 'Card',
      name: 'card',
      screen: CardScreen(),
      icon: Icons.yard,
    ),
  ];

  static var onGenerateRoute; // <MenuOptions>[]
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'Home': (BuildContext context) => HomeScreenP(),
    'HomeP': (BuildContext context) => HomeScreenP(),
    'Biblioteca': (BuildContext context) => BibliotecaScreen(),
    'Alert': (BuildContext context) => AlertScreen(),
    'Card': (BuildContext context) => Card(),
    'Informacion': (BuildContext context) => InformacionScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }*/
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}

class Push {}
