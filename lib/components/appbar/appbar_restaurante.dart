import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppbarRestaurante extends StatelessWidget implements PreferredSizeWidget {
  const AppbarRestaurante({super.key});


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Tela inicial",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    );
  }
}