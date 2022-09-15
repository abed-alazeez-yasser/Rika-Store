import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/successful_screen');
                        },
                        icon: SvgPicture.asset('assets/svgs/arrow_left.svg')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 50,
                    child: CupertinoSearchTextField(
                      backgroundColor: Color.fromARGB(255, 243, 244, 245),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      prefixIcon:
                          Icon(Icons.search, color: Colors.black, size: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        // Container(
                        //   child: Stack(
                        //     children: [
                        //       SvgPicture.asset('assets/images/Rectangle 14.png'),
                        //       Container(

                        //       ),

                        //     ],
                        //   ),
                        // ),
                        CategoryCard(
                          title: 'New Arrivals ',
                          SubTitle: '208 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Clothes",
                          SubTitle: '358 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Bags",
                          SubTitle: '160 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Shoese ",
                          SubTitle: '230 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Electronics ",
                          SubTitle: 'Electronics',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Jewelry ",
                          SubTitle: '230 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Jewelry",
                          SubTitle: '230 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Jewelry",
                          SubTitle: '230 Product',
                          svgSrc: "assets/images/Rectangle 14.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
