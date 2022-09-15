import 'dart:io';
import 'package:androidios_stting/android_screen.dart';
import 'package:androidios_stting/appstor/firstScreen.dart';
import 'package:androidios_stting/appstor/imageprovider.dart';
import 'package:androidios_stting/appstor/tabbarView.dart';
import 'package:androidios_stting/iosScreen.dart';
import 'package:androidios_stting/provider.dart';
import 'package:androidios_stting/stepbottom.dart';
import 'package:androidios_stting/stepper_providre.dart';
import 'package:androidios_stting/steptop.dart';
import 'package:androidios_stting/stteperspresScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {

 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red));

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<homeprovider>(create: (context) => homeprovider(),),
        ListenableProvider<stepper_Provider>(create: (context) => stepper_Provider(),),
        ListenableProvider<Image_Provider>(create:(context)=>Image_Provider(), )
      ],
      child:android(),
    ),
  );
}


  Widget android() {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>home(),
        'one':(context)=>screenone(),
        //'/':(context)=>MyHomePage(),
        //'top':(context)=>steptop_Screen(),
        //'bottom':(context)=>stepbotom_Screen(),
       // '/': (context) => androidscreen(),

      },
    );
  }
  Widget ios() {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>home(),
        'one':(context)=>screenone(),
        //'/':(context)=>MyHomePage(),
        //'top':(context)=>steptop_Screen(),
        //'bottom':(context)=>stepbotom_Screen(),
      //  '/': (context) => ios_Screen(),
      },
    );
  }






