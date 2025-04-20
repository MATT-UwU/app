import 'package:flutter/material.dart';
import 'package:app/theme/app_theme.dart';

class CustomTarjeta1 extends StatelessWidget {
  const CustomTarjeta1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.add_ic_call_outlined, color: AppTheme.primary),
            title: Text('Tarjeta 1'),
            subtitle: Text("In labore culpa elit deserunt incididunt."),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Image.network(
              'https://www.panaderiaalemana.shop/wp-content/uploads/2020/11/82A8384.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Error al cargar imagen');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Enviar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
