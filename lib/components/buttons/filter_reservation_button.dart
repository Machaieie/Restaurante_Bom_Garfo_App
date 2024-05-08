import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(120, 40),
        backgroundColor: isActive ? Colors.blue : null,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
      icon: Icon(
        icon,
        color: isActive ? Colors.white : Colors.black,
      ),
      label: Text(
        title,
        style: TextStyle(
            color: isActive ? Colors.white : Colors.black, fontSize: 18),
      ),
    );
  }
}
