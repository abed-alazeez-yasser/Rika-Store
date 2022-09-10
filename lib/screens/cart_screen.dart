// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:rika/widgets/notification_card.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({Key? key}) : super(key: key);

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Align(
//                           alignment: AlignmentDirectional.centerStart,
//                           child: IconButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(
//                                     context, '/successful_screen');
//                               },
//                               icon: SvgPicture.asset(
//                                   'assets/svgs/arrow_left.svg')),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         const SizedBox(
//                           child: Text(
//                             'My Order',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         TabBar(
//                           controller: _tabController,
//                           tabs: const [
//                             Tab(
//                               child: Icon(
//                                 Icons.abc_outlined,
//                                 color: Colors.amber,
//                               ),
//                             ),
//                             Tab(
//                               child: Icon(
//                                 Icons.abc_outlined,
//                                 color: Colors.amber,
//                               ),
//                             ),
//                           ],
//                         ),
//                         //     TabBarView(
//                         //       controller: _tabController,
//                         //       children:const [
//                         //         Text('data'),
//                         //         Text('data'),
//                         //       ],
//                         //     ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Column(
//                         children: [
//                           NotificationCards(
//                               trailing: '\$198.00',
//                               avater:
//                                   Image.asset('assets/images/image_order.png'),
//                               mainTitle: 'Kristine Jones',
//                               subTitle: '',
//                               titleBody:
//                                   ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
//                           NotificationCards(
//                               trailing: '\$245.00',
//                               avater:
//                                   Image.asset('assets/images/image_order2.png'),
//                               mainTitle: 'Kristine Jones',
//                               subTitle: '',
//                               titleBody:
//                                   ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
//                           NotificationCards(
//                               trailing: '\$97.99',
//                               avater:
//                                   Image.asset('assets/images/image_order3.png'),
//                               mainTitle: 'Kristine Jones',
//                               subTitle: '',
//                               titleBody:
//                                   ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// //  \n Vado Odelle Dress
// //  \n Quality: 1
// //  \n Size: L
// //  \n Color:

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/notification_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _tabController.dispose();
  }

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
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TabBar(
                      controller: _tabController,
                      isScrollable: false,
                      unselectedLabelStyle: const TextStyle(
                        color: Color.fromARGB(255, 170, 170, 170),
                      ),
                      // unselectedLabelColor: ,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      tabs: const [
                        Tab(
                          child: Text(
                            'Ongoing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Complated',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 300,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(10),
                    //   child: Column(
                    //     children: [
                    //       NotificationCards(
                    //           trailing: '\$198.00',
                    //           avater:
                    //               Image.asset('assets/images/image_order.png'),
                    //           mainTitle: 'Kristine Jones',
                    //           subTitle: '',
                    //           titleBody:
                    //               ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
                    //       NotificationCards(
                    //           trailing: '\$245.00',
                    //           avater:
                    //               Image.asset('assets/images/image_order2.png'),
                    //           mainTitle: 'Kristine Jones',
                    //           subTitle: '',
                    //           titleBody:
                    //               ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
                    //       NotificationCards(
                    //           trailing: '\$97.99',
                    //           avater:
                    //               Image.asset('assets/images/image_order3.png'),
                    //           mainTitle: 'Kristine Jones',
                    //           subTitle: '',
                    //           titleBody:
                    //               ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
                    //     ],
                    //   ),
                    // ),
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
