import 'dart:async';
import 'package:androidios_stting/steptop.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => steptop_Screen()),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Container()),
            Center(
              child: Container(height: 200,width: 200,
                child:Image.asset("assets/image/flutter.png",),
                 ),
               ),
             SizedBox(height: 240),
             Container(height: 80,width: 80,
             child: Image.asset("assets/image/dev-2.png"),),
             SizedBox(height: 15,),
            ],
        ),
      ),
    );
  }
}
