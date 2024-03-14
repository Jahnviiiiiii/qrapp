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

          Text('name'),
          Text('flutter developer'),

        ],
      ),
      ),
    );
  }
}
