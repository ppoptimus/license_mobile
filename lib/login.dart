import 'package:flutter/material.dart';
import 'package:license_mobile/searchRequest.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

//Login Page//
class _LoginState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เข้าระบบ E-Tracking'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Image.asset(
                'assets/images/logo.png',
                height: 160,
                width: 160,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'เลขประจำตัว 13 หลัก',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'รหัสผ่าน',
                ),
              ),
            ),
            Container(
                height: 80,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Log In'),
                  onPressed: () {
                    if (true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}
