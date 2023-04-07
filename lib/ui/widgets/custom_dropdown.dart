import 'package:contacts/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown(
      {Key? key,
      required this.list,
      required this.initialValue,
      required this.onChanged})
      : super(key: key);

  final List<String> list;
  final String? initialValue;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: list.map((String category) {
        return DropdownMenuItem(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (newValue) => onChanged(newValue),
      value: initialValue,
      decoration: const InputDecoration(
          filled: true,
          fillColor: AppColors.transparentColor,
          labelText: 'Label',
          border: OutlineInputBorder()),
    );
  }
}
