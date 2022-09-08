import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/notification_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                    const SizedBox(
                      child: Text(
                        'My Order',
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
                              trailing: '\$198.00',
                              avater:
                                  Image.asset('assets/images/image_order.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '',
                              titleBody:
                                  ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
                          NotificationCards(
                              trailing: '\$245.00',
                              avater:
                                  Image.asset('assets/images/image_order2.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '',
                              titleBody:
                                  ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
                          NotificationCards(
                              trailing: '\$97.99',
                              avater:
                                  Image.asset('assets/images/image_order3.png'),
                              mainTitle: 'Kristine Jones',
                              subTitle: '',
                              titleBody:
                                  ''' \n Vado Odelle Dress\n Quality: 1\n Size: L\n Color: '''),
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
//  \n Vado Odelle Dress
//  \n Quality: 1
//  \n Size: L
//  \n Color: 