import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Positioned(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo_black.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          'Welcome!',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 34,
                      child: Text(
                        'please login or sign up to continue our app',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(5),
                    hintText: 'Example@domain.com',
                    suffixIcon: Icon(Icons.done),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(5),
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.done),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
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
                    Navigator.pushReplacementNamed(
                        context, '/successful_screen');
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              //divider
              Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 32,
                      )),
                ),
                const Text('or'),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 32,
                      )),
                ),
              ]),
              //
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 59, 89, 152),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: RichText(
                    text: const TextSpan(children: [
                      WidgetSpan(
                        child:
                            Icon(Icons.facebook, color: Colors.white, size: 20),
                      ),
                      TextSpan(
                        text: ' Continue with',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      TextSpan(
                          text: ' Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ]),
                  ),
                ),
              ),
              //google
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 238, 238, 238)),
                  ),
                  onPressed: () {},
                  child: RichText(
                    text: const TextSpan(children: [
                      WidgetSpan(
                        child: Icon(Icons.g_mobiledata,
                            color: Colors.black, size: 20),
                      ),
                      TextSpan(
                        text: ' Continue with',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                      TextSpan(
                          text: ' Googel',
                          style: TextStyle(
                              color: Color.fromARGB(255, 102, 102, 102),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ]),
                  ),
                ),
              ),
              //Apple
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 238, 238, 238)),
                  ),
                  onPressed: () {},
                  child: RichText(
                    text: const TextSpan(children: [
                      WidgetSpan(
                        child: Icon(Icons.apple, color: Colors.black, size: 20),
                      ),
                      TextSpan(
                        text: ' Continue with',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                      TextSpan(
                          text: ' Apple',
                          style: TextStyle(
                              color: Color.fromARGB(255, 102, 102, 102),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
