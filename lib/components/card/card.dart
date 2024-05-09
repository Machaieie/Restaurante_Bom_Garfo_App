import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
    required this.title,
    required this.body,
    this.isActive = false,
    required this.press,
    this.longPress,
  }) : super(key: key);

  final String title, body;
  final bool isActive;
  final VoidCallback press;
  final VoidCallback? longPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adiciona uma margem de 8.0 pixels em todos os lados
      child: InkWell(
        onTap: press,
        onLongPress: longPress,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isActive ? Colors.blue : Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: isActive ? Colors.blue : Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  body,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
