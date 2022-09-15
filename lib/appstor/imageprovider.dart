
import 'package:flutter/material.dart';

import 'modelclass.dart';

class Image_Provider extends ChangeNotifier
{
  List <screenModel> dataone = [
    screenModel(photo: "assets/image/amazon.png",appname: "Amazon",star: "4.2"),
    screenModel(photo: "assets/image/digilocker.png",appname: "DigiLocker",star: "4.1"),
    screenModel(photo: "assets/image/netflix.png",appname: "Netflix",star: "4.3"),
    screenModel(photo: "assets/image/snapseed.png",appname: "Snapseed",star: "4.3"),
    screenModel(photo: "assets/image/swiggy.png",appname: "Swiggy",star: "4.4"),
  ];

  List <screenModel> name = [
    screenModel(name: "Recommended for you"),
    screenModel(name: "New & updated apps"),
    screenModel(name: "Suggested for you"),
    screenModel(name: "Editor's Choice apps"),
  ];

  List <screenModel> datatwo = [
    screenModel(photo: "assets/image/angleone.png",appname: "Angel One",star: "4.2"),
    screenModel(photo: "assets/image/dominos.png",appname: "Domino's Pizza",star: "4.1"),
    screenModel(photo: "assets/image/groww.png",appname: "Groww: socks",star: "4.3"),
    screenModel(photo: "assets/image/octafx.png",appname: "OctaFX Trading",star: "4.3"),
    screenModel(photo: "assets/image/zomato.png",appname: "Zomato",star: "4.4"),
  ];

  List <screenModel> datathree = [
    screenModel(photo: "assets/image/bookmyshow.png",appname: "BookMyShow",star: "4.2"),
    screenModel(photo: "assets/image/hotstar.png",appname: "Disnep Hotstar",star: "4.1"),
    screenModel(photo: "assets/image/lighroom.png",appname: "Lightroom CC",star: "4.3"),
    screenModel(photo: "assets/image/primevideo.png",appname: "Amazon Prime Video",star: "4.3"),
    screenModel(photo: "assets/image/spotify.png",appname: "Spotify",star: "4.4"),
  ];

  List <screenModel> datafour = [
    screenModel(photo: "assets/image/facebook.png",appname: "Facebook",star: "4.2"),
    screenModel(photo: "assets/image/Instagram.png",appname: "Instagram",star: "4.1"),
    screenModel(photo: "assets/image/snapchat.png",appname: "Snapchat",star: "4.3"),
    screenModel(photo: "assets/image/twitter.png",appname: "Twitter",star: "4.3"),
    screenModel(photo: "assets/image/whatsapp.png",appname: "Whatsapp",star: "4.4"),
  ];


}