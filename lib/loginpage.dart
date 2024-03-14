import 'package:flutter/material.dart';
import 'package:qrapplication/qrscanner.dart';
import 'package:qrapplication/registration.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
              decoration:InputDecoration(
                labelText: "Enter your roll.no", labelStyle: TextStyle(color: Colors.white),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(width:3,color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),),
            ),
            SizedBox(
              height: 30,
              width: 70,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Enter your password", labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:3,color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(height:20,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const qrscanner()));
              },
              child: Text('Login',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent)),
            ),
            Text(
              "OR",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>const registration()));

              },
              child: Text('create an account! ',
                style:TextStyle(color:Colors.white),),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent)),
            )
          ],
        ));
  }
}
