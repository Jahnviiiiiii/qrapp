import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapplication/qrscanner.dart';
import 'package:qrapplication/registration.dart';
import 'package:http/http.dart'as http;

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final rollno = TextEditingController();
  final password = TextEditingController();

  Future<void> login() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'content-type': 'application/json; charset=utf-8',
        },
        body: jsonEncode({'rollno': rollno.text, 'password': password.text}));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data['message']);
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const qrscanner()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
        data["message"],

      ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 28,
                  height: 4.5,
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: rollno,
              decoration: InputDecoration(
                labelText: "Enter your roll.no",
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),),
            ),
            SizedBox(
              height: 30,
              width: 70,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: "Enter your password",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const qrscanner()));
              },
              child: Text('Login', style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.cyanAccent)),
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const registration()));
              },
              child: Text('create an account! ',
                style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.pink),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.cyanAccent)),
            )
          ],
        ));
  }


}
