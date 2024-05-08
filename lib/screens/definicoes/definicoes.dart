import 'package:flutter/material.dart';

class Definicoes extends StatefulWidget {
  const Definicoes({super.key});

  @override
  State<Definicoes> createState() => _DefinicoesState();
}

class _DefinicoesState extends State<Definicoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          "Definições",
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(Icons.settings)
        ,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
