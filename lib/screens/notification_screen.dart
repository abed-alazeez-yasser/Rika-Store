import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                    Row(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/successful_screen');
                              },
                              icon: SvgPicture.asset(
                                  'assets/svgs/arrow_left.svg')),
                        ),
                        const Spacer(),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: IconButton(
                            onPressed: () {
                              // Navigator.pushNamed(
                              //     context, '/successful_screen');
                            },
                            icon: SvgPicture.asset(
                              'assets/svgs/dots.svg',
                              width: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater1.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater2.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater3.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater4.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater1.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater2.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater3.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater4.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater1.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater2.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                          NotificationCards(
                              avater:
                                  Image.asset('assets/images/img_avater3.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '2 hours ago',
                              titleBody:
                                  ' It is a long established\nthat a reader will be distracted by the\nreadable content of a page.'),
                          const Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
