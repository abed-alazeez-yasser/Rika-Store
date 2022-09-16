import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rika/theme/colors.dart';
import 'package:rika/widgets/card.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String level = 'value';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: ListView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/messege_list_screen');
                },
                icon: SvgPicture.asset('assets/svgs/arrow_left.svg')),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color.fromARGB(255, 204, 204, 204),
            ),
          ),
          child: TextField(
            cursorColor: black,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  LineIcons.search,
                  color: black.withOpacity(0.5),
                ),
                hintText: "Search",
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Title(
          color: black,
          child: const Text(
            'Select Language',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        // AppCard(
        //   title: const Text('English'),
        //   value: '1',
        //   image: Image.asset('assets/images/UK.png'),
        //   onChanged: (value) {
        //     setState(() {
        //       level = value.toString();
        //     });
        //   },
        // ),
        AppCard(
          title: const Text('English'),
          value: '2',
          image: Image.asset('assets/images/UK.png'),
          onChanged: (value) {
            setState(() {
              level = value.toString();
            });
          },
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          child: RadioListTile(
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
            value: '3',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/ER.png'),
            title: const Text('English'),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          child: RadioListTile(
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
            value: '4',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/Ge.png'),
            title: const Text('English'),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          child: RadioListTile(
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
            value: '5',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/pr.png'),
            title: const Text('English'),
          ),
        ),
      ],
    ));
  }
}
