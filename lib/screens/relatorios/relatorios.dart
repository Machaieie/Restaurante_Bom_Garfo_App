import 'package:flutter/material.dart';

class Relatorios extends StatefulWidget {
  const Relatorios({super.key});

  @override
  State<Relatorios> createState() => _RelatoriosState();
}

class _RelatoriosState extends State<Relatorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: const Text(
        "Relatórios",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
      body: Container(),
    );
  }
}