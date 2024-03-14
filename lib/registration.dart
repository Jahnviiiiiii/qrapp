import 'package:flutter/material.dart';
import 'package:qrapplication/qrscanner.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
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
             decoration:InputDecoration(
               labelText: "Enter your phone no ", labelStyle: TextStyle(color: Colors.white),
              enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
          ),),
          ),
          SizedBox(
            height: 20,
          ),
      TextField(
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
        decoration:InputDecoration(
          labelText: "Enter your password ", labelStyle: TextStyle(color: Colors.white),
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),),
      ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const qrscanner()));
          },
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
