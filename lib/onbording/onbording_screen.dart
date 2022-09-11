import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/onboordingcontent.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int i = 1;
  late PageController _pageController;
  final String arrow = 'assets/svgs/arrow.svg';

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  i = index;
                });
              },
              children: [
                OnbordingContact(
                  image: Image.asset('assets/images/image_1.png'),
                  title: '20% Discount \nNew Arrival Product',
                  body:
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                ),
                OnbordingContact(
                  image: Image.asset('assets/images/image_2.png'),
                  title: 'Take Advantage\nOf The Offer Shopping',
                  body:
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                ),
                OnbordingContact(
                  image: Image.asset('assets/images/image_3.png'),
                  title: 'All Types Offers\nWithin Your Reach',
                  body:
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 5, right: 5),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: Color.fromARGB(255, 221, 221, 221),
                    activeDotColor: Color.fromARGB(255, 0, 0, 0),
                    dotHeight: 7,
                    dotWidth: 7,
                  ),
                  onDotClicked: (index) {},
                ),
                const Spacer(),
                //contanier
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/splash_screen');
                  },
                  icon: SvgPicture.asset(
                    'assets/svgs/arrow.svg',
                    width: 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
