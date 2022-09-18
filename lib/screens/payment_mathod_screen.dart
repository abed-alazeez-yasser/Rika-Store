import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/theme/colors.dart';
import 'package:rika/widgets/card.dart';
import 'package:rika/widgets/notification_card.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
                  Navigator.pushNamed(context, '/pay_confarim_screen');
                },
                icon: SvgPicture.asset('assets/svgs/arrow_left.svg')),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Title(
          color: black,
          child: const Text(
            'Payment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        AppCard(
          title: const Text('Credit Card'),
          value: '2',
          image: Image.asset('assets/images/UK.png'),
          onChanged: (value) {
            Navigator.pushNamed(context, '/pay_confarim_screen');
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
              Navigator.pushNamed(context, '/pay_confarim_screen');
              setState(() {
                level = value.toString();
              });
            },
            value: '3',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/ER.png'),
            title: const Text('Paypal'),
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
              Navigator.pushNamed(context, '/pay_confarim_screen');
              setState(() {
                level = value.toString();
              });
            },
            value: '4',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/Ge.png'),
            title: const Text('Visa'),
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
              Navigator.pushNamed(context, '/pay_confarim_screen');
              setState(() {
                level = value.toString();
              });
            },
            value: '5',
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Image.asset('assets/images/pr.png'),
            title: const Text('Google Pay'),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(style: BorderStyle.solid),
          ),
          child: ListTile(
            title: Row(
              children: const [
                Icon(Icons.add),
                SizedBox(
                  width: 16,
                ),
                Text('Add Card'),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Title(
          color: black,
          child: const Text(
            'History',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        NotificationCards(
          trailing: '\$198.00',
          avater: Image.asset('assets/images/image_order.png'),
          mainTitle: 'Kristine Jones',
          subTitle: '',
          titleBody: ' \n Vado Odelle Dress',
        ),
        NotificationCards(
          trailing: '\$198.00',
          avater: Image.asset('assets/images/image_order.png'),
          mainTitle: 'Kristine Jones',
          subTitle: '',
          titleBody: ' \n Vado Odelle Dress',
        ),
        NotificationCards(
          trailing: '\$198.00',
          avater: Image.asset('assets/images/image_order.png'),
          mainTitle: 'Kristine Jones',
          subTitle: '',
          titleBody: ' \n Vado Odelle Dress',
        ),
        NotificationCards(
          trailing: '\$198.00',
          avater: Image.asset('assets/images/image_order.png'),
          mainTitle: 'Kristine Jones',
          subTitle: '',
          titleBody: ' \n Vado Odelle Dress',
        ),
      ],
    ));
  }
}
