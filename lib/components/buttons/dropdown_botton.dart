import 'package:flutter/material.dart';

class DropdownButtonComponent extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final ValueChanged<String> onChanged;

  const DropdownButtonComponent({
    Key? key,
    required this.items,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropdownButtonComponentState createState() => _DropdownButtonComponentState();
}

class _DropdownButtonComponentState extends State<DropdownButtonComponent> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      
      child: DropdownButton<String>(
        
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: widget.items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              dropdownValue = newValue;
            });
            widget.onChanged(newValue);
          }
        },
      ),
    );
  }
}
