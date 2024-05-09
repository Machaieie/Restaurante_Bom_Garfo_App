import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/components/card/card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardDetails(
                      title: 'Gestão de Vendas',
                      body: 'Controle de vendas e faturamento',
                      isActive: false,
                      press: () {
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: CardDetails(
                      title: 'Gestão de Estoque',
                      body: 'Controle de estoque e inventário',
                      press: () {
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardDetails(
                      title: 'Funcionários',
                      body: 'Gestão de funcionários e equipes',
                      press: () {
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: CardDetails(
                      title: 'Reservas',
                      body: 'Gestão de reservas de clientes',
                      press: () {
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardDetails(
                      title: 'Pedidos',
                      body: 'Controle de pedidos e entregas',
                      press: () {
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: CardDetails(
                      title: 'Serviços',
                      body: 'Gestão de serviços e atendimento',
                      press: () {
                      },
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
