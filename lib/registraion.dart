import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _MyAppState();
}

class _MyAppState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
        child: Column(
        children: [
        SizedBox(height: 60),
        Text('Registrarion',style: TextStyle(color: Colors.white,fontSize: 40),),
        SizedBox(height: 20),
        Container(
          width: 600,
          child:  TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'enter your name'),
         )

         ),
          SizedBox(height: 20),
          Container(
          width: 600,
          child:  TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'enter your email'),
          ),
          ),
          SizedBox(height: 20),
          Container(
          width: 600,
          child:  TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'enter your phone number'),
          ),),
          SizedBox(height: 20),
          Container(
          width: 600,
          child:  TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'create a password'),
         ),
          ),
         SizedBox(height: 40),
         TextButton(onPressed: null,
          child: Text("create", style: TextStyle(fontSize: 25,color: Colors.white),),
          style: TextButton.styleFrom(backgroundColor: Colors.cyanAccent),
          ),
        ],
          ),
          ),
          ),);
  }}
