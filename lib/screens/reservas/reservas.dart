import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/components/buttons/filter_reservation_button.dart';
import 'package:restaurante_bom_garfo/components/constants.dart';
import 'package:restaurante_bom_garfo/screens/reservas/reservas_form.dart';

class Reservas extends StatefulWidget {
  const Reservas({Key? key}) : super(key: key);

  @override
  State<Reservas> createState() => _ReservasState();
}

class _ReservasState extends State<Reservas> {
  String activeButton = 'Data & Hora';

  void setActiveButton(String title) {
    setState(() {
      activeButton = title;
    });
  }

  IconData getIconForButton(String title) {
    switch (title) {
      case 'Data & Hora':
        return Icons.date_range;
      case 'Hoje':
        return Icons.calendar_today;
      case 'Esta Semana':
        return Icons.calendar_view_week;
      case 'Este Mês':
        return Icons.calendar_today;
      case 'Este Ano':
        return Icons.calendar_today;
      default:
        return Icons.date_range;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reservas",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Column(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String title in [
                      'Data & Hora',
                      'Hoje',
                      'Esta Semana',
                      'Este Mês',
                      'Este Ano',
                    ])
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: FilterButton(
                          icon: getIconForButton(title),
                          title: title,
                          isActive: title == activeButton,
                          press: () {
                            setActiveButton(title);
                          },
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReservaForm()),
          );
        },
      ),
    );
  }
}
