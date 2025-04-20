import 'package:app/widget/custom_tarjeta_1.dart';
import 'package:app/widget/custom_tarjeta_2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Screen - Widget")),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [CustomTarjeta1(), CustomTarjeta2()],
      ),
    );
  }
}
