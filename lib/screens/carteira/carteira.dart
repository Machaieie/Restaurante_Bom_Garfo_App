import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/components/card/card.dart';

class Carteira extends StatefulWidget {
  const Carteira({Key? key}) : super(key: key);

  @override
  State<Carteira> createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carteira",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: GridView.count(
          crossAxisCount: 2, 
          children: [
            CardDetails(
              title: 'Banco',
              body: '0.0 Mts',
              press: () {
                
              },
            ),
            CardDetails(
              title: 'M-pesa',
              body: '0.0 Mts',
              press: () {
                
              },
            ),
            CardDetails(
              title: 'Emola',
              body: '0.0 Mts',
              press: () {
                
              },
            ),
            CardDetails(
              title: 'Conta-Movel',
              body: '0.0 Mts',
              press: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Importe e defina o CardDetails aqui
