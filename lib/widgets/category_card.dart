import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final String SubTitle;

  final Function press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.SubTitle,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.amber,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Image.asset(
                    svgSrc,
                    width: 100,
                    height: 80,
                  ),
                  Text(title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    SubTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
