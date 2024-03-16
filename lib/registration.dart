import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:qrapplication/loginpage.dart';
import 'package:qrapplication/qrscanner.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final TextEditingController _name =TextEditingController();
  final TextEditingController _num =TextEditingController();
  final TextEditingController _email =TextEditingController();
  final TextEditingController _password =TextEditingController();

  bool loading = false;
  void register()async{
    Uri uri= Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
   headers:<String,String>{
      'content-type':'application/json; charset=UFT-8',
   },
        body: jsonEncode({
          'name':_name.text,
          'phone':_num.text,
          'email':_email.text,
          'password':_password.text
        }));
    print(response.statusCode);
    print(response.body);
    var data= jsonDecode(response.body);
    print(data['message']);

    if (response.statusCode==200){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>const Loginpage()));

  }else {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('REGISTRARION FAILED')),);
    }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Registration',
          style: TextStyle(
              fontSize: 28,
              height: 10.5,
              color: Colors.white),
          textAlign: TextAlign.center,
          ),
          TextField(
            controller: _name,
    decoration:InputDecoration(
    labelText: "Enter your name", labelStyle: TextStyle(color: Colors.white),
    enabledBorder:OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
          )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _num,
             decoration:InputDecoration(
               labelText: "Enter your roll no ", labelStyle: TextStyle(color: Colors.white),
              enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
          ),),
          ),
          SizedBox(
            height: 20,
          ),
      TextField(
        controller: _email,
        decoration:InputDecoration(
          labelText: "Enter your email ", labelStyle: TextStyle(color: Colors.white),
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        controller: _password,
        decoration:InputDecoration(
          labelText: "Enter your password ", labelStyle: TextStyle(color: Colors.white),
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),),
      ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: register,
              child: Text('Register',style: TextStyle(color: Colors.white),),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent)),
          ),
        ],
    ),
      );
  }
}
