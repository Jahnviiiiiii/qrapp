import 'package:flutter/material.dart';
class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.network("https://cdn2.iconfinder.com/data/icons/outlined-set-1/29/people-512.png",height: 100, width: 150,),
        SizedBox(height:50,),
            RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 22, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Name',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              ),
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 22, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'flutter developer',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              ),
            ),


        ],
      ),
      ),
    );
  }
}
