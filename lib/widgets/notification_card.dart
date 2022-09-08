import 'package:flutter/material.dart';

class NotificationCards extends StatelessWidget {
  final Image avater;
  final String mainTitle;
  final String titleBody;
  final String subTitle;

  const NotificationCards({
    Key? key,
    required this.avater,
    required this.mainTitle,
    required this.titleBody,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: avater,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: mainTitle,
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: titleBody,
              style: const TextStyle(
                  fontSize: 11, color: Color.fromARGB(255, 102, 102, 102)),
            ),
          ],
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
            fontSize: 10, color: Color.fromARGB(255, 170, 170, 170)),
      ),
    );
  }
}
