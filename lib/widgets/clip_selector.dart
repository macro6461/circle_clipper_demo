import 'package:flutter/material.dart';

List<DropdownMenuItem<int>> get dropdownItems{
  const List<DropdownMenuItem<int>> menuItems = [
    DropdownMenuItem(child: Text("Normal"),value: 0),
    DropdownMenuItem(child: Text("Circle"),value: 1),
    DropdownMenuItem(child: Text("Rectangle"),value: 2),
    DropdownMenuItem(child: Text("Oval"),value: 3),
    DropdownMenuItem(child: Text("Avatar"),value: 4),
    DropdownMenuItem(child: Text("Triangle"),value: 5),
  ];
  return menuItems;
}

class ClipSelector extends StatelessWidget {
  final int selectedValue;
  final Function toggle;
  const ClipSelector({Key? key, required this.selectedValue, required this.toggle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return DropdownButton(
          value: selectedValue,
          items: dropdownItems, 
          onChanged: (Object? value) { 
            toggle(value); 
          },
      );
  }
}