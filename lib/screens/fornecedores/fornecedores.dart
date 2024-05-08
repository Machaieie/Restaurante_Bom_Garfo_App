import 'package:flutter/material.dart';

class Fornecedores extends StatefulWidget {
  const Fornecedores({super.key});

  @override
  State<Fornecedores> createState() => _FornecedoresState();
}

class _FornecedoresState extends State<Fornecedores> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      title: const Text(
        "Fornecedores",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
      body: Container(),
    );
  }
}