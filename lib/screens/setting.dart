import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/widgets/form_setting.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _selectedMode = 'E';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const FormSetting(
              label: 'Name',
              textField: 'Hasan Mahmud',
            ),
            Row(
              children: [
                const Text(
                  'Gender',
                  style: TextStyle(
                    color: Color.fromARGB(255, 170, 170, 170),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 130,
                  child: RadioListTile(
                    title: const Text(
                      'Male',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    value: 'E',
                    groupValue: _selectedMode,
                    onChanged: (value) => {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: RadioListTile(
                    title: const Text(
                      'female',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    value: 'E',
                    groupValue: _selectedMode,
                    onChanged: (String? value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const FormSetting(
              label: 'Age',
              textField: '22 Year',
            ),
            const FormSetting(
              label: 'Email',
              textField: 'Example@domaine.com',
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Settings',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/bag.png'),
                      title: const Text('Personal Details'),
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
              height: 20,
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
                  Navigator.pushReplacementNamed(context, '/successful_screen');
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
