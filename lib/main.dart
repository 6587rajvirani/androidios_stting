import 'dart:io';
import 'package:androidios_stting/appstor/botomnavigationbar.dart';
import 'package:androidios_stting/appstor/bottombar.dart';
import 'package:androidios_stting/appstor/firstScreen.dart';
import 'package:androidios_stting/appstor/gamefirstScreen.dart';
import 'package:androidios_stting/appstor/imageprovider.dart';
import 'package:androidios_stting/appstor/secondeScreen.dart';
import 'package:androidios_stting/appstor/tabbarView.dart';
import 'package:androidios_stting/provider.dart';
import 'package:androidios_stting/stepper_providre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {

 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white,statusBarIconBrightness: Brightness.dark,systemNavigationBarDividerColor: Colors.black));


  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<homeprovider>(create: (context) => homeprovider(),),
        ListenableProvider<stepper_Provider>(create: (context) => stepper_Provider(),),
        ListenableProvider<Image_Provider>(create:(context)=>Image_Provider(),),
        ListenableProvider<botoomnavigationbar>(create: (context)=>botoomnavigationbar(),),
      ],
      child:android(),
    ),
  );
}


  Widget android() {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>bottomber_Screen(),
        'top':(context)=>apps_TabBar(),
        'one':(context)=>screenone(),
        'sec':(context) =>app_cickScreen(),
        'game':(context)=>Game_Tabbar(),
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
        '/':(context)=>bottomber_Screen(),
        'top':(context)=>apps_TabBar(),
        'one':(context)=>screenone(),
        'sec':(context) =>app_cickScreen(),
        'game':(context)=>Game_Tabbar(),
        //'/':(context)=>MyHomePage(),
        //'top':(context)=>steptop_Screen(),
        //'bottom':(context)=>stepbotom_Screen(),
      //  '/': (context) => ios_Screen(),
      },
    );
  }






