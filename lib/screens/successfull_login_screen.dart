import 'package:flutter/material.dart';

class Successfull extends StatefulWidget {
  const Successfull({Key? key}) : super(key: key);

  @override
  State<Successfull> createState() => _SuccessfullState();
}

class _SuccessfullState extends State<Successfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.asset('assets/images/Vector.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Title(
                  color: Colors.black,
                  child: const Text(
                    'Successful!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'You have successfully registered in\nour app and start working in it.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
                child: const Text(
                  'Start Shopping',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
