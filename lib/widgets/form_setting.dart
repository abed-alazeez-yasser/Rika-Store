import 'package:flutter/material.dart';

class FormSetting extends StatelessWidget {
  final String label;
  final String textField;

  const FormSetting({
    Key? key,
    required this.label,
    required this.textField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color.fromARGB(255, 170, 170, 170),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        Spacer(),
        SizedBox(
          width: 220,
          child: TextField(
            decoration: InputDecoration(
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.all(5),
              hintText: textField,
              hintStyle: TextStyle(color: Colors.black),
              enabled: false,
            ),
          ),
        ),
      ],
    );
  }
}
