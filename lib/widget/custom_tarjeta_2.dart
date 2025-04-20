import 'package:flutter/material.dart';

class CustomTarjeta2 extends StatelessWidget {
  const CustomTarjeta2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Text('data'),
          Image(
            image: NetworkImage(
              'https://www.panaderiaalemana.shop/wp-content/uploads/2020/11/82A8384.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
