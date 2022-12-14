import 'package:flutter/material.dart';
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
              height: 25,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image:
                            ExactAssetImage('assets/images/Rectangle 74.png'),
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                  width: 120,
                  child: RadioListTile(
                    title: const Text(
                      'Male',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    value: 'E',
                    groupValue: _selectedMode,
                    onChanged: (val) {
                      
                    },
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
              height: 16,
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
                      title: const Text('Language'),
                      trailing: Image.asset('assets/images/arrow1.png'),
                      onTap: () => {
                        Navigator.pushNamed(context, '/language_screen'),
                        debugPrint("Card tapped."),
                      },
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
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
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
