import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/theme/colors.dart';
import 'package:rika/widgets/card_details_widegets.dart';

class PayementConfirm extends StatefulWidget {
  const PayementConfirm({Key? key}) : super(key: key);

  @override
  State<PayementConfirm> createState() => _PayementConfirmState();
}

class _PayementConfirmState extends State<PayementConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Image.asset('assets/images/card.png'),
            const SizedBox(
              height: 16,
            ),
            Title(
              color: black,
              child: const Text(
                'Card Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CardDetails(hintText: 'Card number'),
            const SizedBox(
              height: 10,
            ),
            const CardDetails(hintText: 'Exp date'),
            const SizedBox(
              height: 10,
            ),
            const CardDetails(hintText: 'CVV'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 238, 238, 238)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 170, 170, 170),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext contetext) {
                          return const DevAlert();
                        },
                      );
                    },
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DevAlert extends StatelessWidget {
  const DevAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      content: Center(
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset('assets/svgs/BG.svg'),
              ),
              const SizedBox(height: 10),
              Title(
                color: Colors.black,
                child: const Text(
                  'Successful!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'You have successfully your\nConfirm Payment send!',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'continue Shopping',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
