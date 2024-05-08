import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/screens/definicoes/definicoes.dart';
import 'package:restaurante_bom_garfo/screens/fornecedores/fornecedores.dart';
import 'package:restaurante_bom_garfo/screens/login/login.dart';
import 'package:restaurante_bom_garfo/screens/pedidos/pedidos.dart';
import 'package:restaurante_bom_garfo/screens/relatorios/relatorios.dart';
import 'package:restaurante_bom_garfo/screens/reservas/reservas.dart';

class DrawerRestaurante extends StatelessWidget {
  const DrawerRestaurante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _buildUserHeader(),
          _buildListTile(Icons.dinner_dining, "Pedidos", () => _navigateToPage(context, Pedidos())),
          _buildListTile(Icons.calendar_today, "Reservas", () => _navigateToPage(context, Reservas())),
          _buildListTile(Icons.pie_chart, "Relatórios", () => _navigateToPage(context, Relatorios())),
          _buildListTile(Icons.person_add, "Fornecedores", () => _navigateToPage(context, Fornecedores())),
          _buildListTile(Icons.settings, "Definições", () => _navigateToPage(context, Definicoes())),
          _buildListTile(Icons.logout, "Sair", () => _navigateToPage(context, LoginPage())),
        ],
      ),
    );
  }

  Widget _buildUserHeader() {
    return const UserAccountsDrawerHeader(
      accountEmail: Text("machaieieedwin1@gmail.com"),
      accountName: Text("Edwin Machaieie"),
      currentAccountPicture: CircleAvatar(
        //foregroundImage: AssetImage('assets/images/userAvatar.jpg'),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }
}
