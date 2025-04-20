import 'package:app/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal Ingenieria de Sistemas'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(menuOptions[index].icon),
              title: Text(menuOptions[index].name),
              onTap: () {
                Navigator.pushNamed(context, menuOptions[index].route);
              },
            ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
