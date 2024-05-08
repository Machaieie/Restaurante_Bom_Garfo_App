import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/components/drawer/drawer_restaurante.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        "Tela inicial",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
      drawer: DrawerRestaurante(),
    );
  }
}
