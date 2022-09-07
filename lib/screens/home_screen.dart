import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/svgs/arrow.svg')),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
              child: CupertinoSearchTextField(
                backgroundColor: Color.fromARGB(255, 243, 244, 245),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
