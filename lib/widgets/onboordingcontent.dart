import 'package:flutter/material.dart';

class OnbordingContact extends StatelessWidget {
  final Image image;
  final String title;
  final String body;

  const OnbordingContact({
    Key? key,
    required this.image,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: image,
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                title,
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                body,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
