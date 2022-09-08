import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                              Navigator.pushNamed(context, '/setting_screen');
                            },
                            icon: Image.asset('assets/images/settings.png'),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset('assets/images/Rectangle 74.png'),
                        title: const Text('Hasan Mahmud'),
                        subtitle: const Text('rikafashionshop@gmail.com'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 221, 221, 221),
                        ),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset('assets/images/bag.png'),
                              title: const Text('Personal Details'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Order'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Favourites'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('Shipping Address'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Card'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              title: const Text(
                                'Settings',
                              ),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 221, 221, 221),
                        ),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset('assets/images/bag.png'),
                              title: const Text('Personal Details'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Order'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Favourites'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('Shipping Address'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.abc_sharp),
                              title: const Text('My Card'),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                            ListTile(
                              leading: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              title: const Text(
                                'Settings',
                              ),
                              trailing: Image.asset('assets/images/arrow1.png'),
                            ),
                          ],
                        ),
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
