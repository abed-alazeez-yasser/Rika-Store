import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String level = 'value';
  final Widget title;
  final String value;
  final Widget image;
  final ValueChanged onChanged;

  const AppCard({
    Key? key,
    required this.title,
    required this.value,
    required this.image,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: RadioListTile(
        groupValue: level,
        onChanged: onChanged,
        value: value,
        controlAffinity: ListTileControlAffinity.trailing,
        secondary: image,
        title: title,
      ),
    );
  }
}
