import 'package:app/widget/custom_card_1.dart';
import 'package:flutter/material.dart';

class InformacionScreen extends StatelessWidget {
  const InformacionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informaciones de la Carrera')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const [CustomCardType1()],
      ), // ListView
    ); // Scaffold
  }
}
