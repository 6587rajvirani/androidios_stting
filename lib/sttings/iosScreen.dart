import 'package:androidios_stting/sttings/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ios_Screen extends StatefulWidget {
  const ios_Screen({Key? key}) : super(key: key);

  @override
  State<ios_Screen> createState() => _ios_ScreenState();
}

class _ios_ScreenState extends State<ios_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Settings UI",style: TextStyle(color: CupertinoColors.extraLightBackgroundGray),),
            backgroundColor:CupertinoColors.destructiveRed,
          ),
          backgroundColor: CupertinoColors.systemGrey2,
          child: Column(
            children: [
               Row(
                 children: [
                   Expanded(
                     child: Column(
                       children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left: 8,bottom: 8,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Common",style: TextStyle(color:CupertinoColors.darkBackgroundGray,fontSize:20 ),),
                              ],
                            ),
                          ),
                         Container(
                           height: 80,
                           width: double.infinity,
                           color: CupertinoColors.extraLightBackgroundGray,
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Icon(CupertinoIcons.globe,color: CupertinoColors.black,),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("Language",style: TextStyle(color: CupertinoColors.black),),
                                   ),
                                   Expanded(child: Container()),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("English",style: TextStyle(color: CupertinoColors.inactiveGray),),
                                   ),
                                   Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Icon(CupertinoIcons.cloud,color: CupertinoColors.black,),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("Environment",style: TextStyle(color: CupertinoColors.black),),
                                   ),
                                   Expanded(child: Container()),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("Production",style: TextStyle(color: CupertinoColors.inactiveGray),),
                                   ),
                                   Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                 ],
                               ),
                             ],
                           )
                           ),
                         Padding(
                           padding: const EdgeInsets.only(top: 30,left: 8,bottom: 8,),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Account",style: TextStyle(color:CupertinoColors.darkBackgroundGray,fontSize:20 ),),
                             ],
                           ),
                         ),
                         Container(
                             height: 120,
                             width: double.infinity,
                             color: CupertinoColors.extraLightBackgroundGray,
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.phone,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Phone number",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.mail,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Email",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                   ],
                                 ),
                                 Expanded(child: Container()),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.square_arrow_left,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Sign out",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                   ],
                                 ),
                               ],
                             )
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 30,left: 8,bottom: 8,),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Secutiry",style: TextStyle(color:CupertinoColors.darkBackgroundGray,fontSize:20 ),),
                             ],
                           ),
                         ),
                         Container(
                             height: 120,
                             width: double.infinity,
                             color: CupertinoColors.extraLightBackgroundGray,
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child:  Icon(Icons.phonelink_lock_rounded,color: Colors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Lock app in background",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     CupertinoSwitch(value: Provider.of<homeprovider>(context,listen: true).isCheck,
                                             onChanged: (value){
                                              Provider.of<homeprovider>(context,listen: true).switc(value);
                                          },
                                     activeColor: CupertinoColors.destructiveRed,
                                     )
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(Icons.fingerprint,color: Colors.black),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Use fingerprint",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     CupertinoSwitch(
                                       value: Provider.of<homeprovider>(context,listen: true).check,
                                       onChanged: (valu){
                                         Provider.of<homeprovider>(context,listen: true).switc(valu);
                                       },
                                       activeColor: CupertinoColors.destructiveRed,
                                     ),
                                   ],
                                 ),
                                 Expanded(child: Container()),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.lock,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Change password",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     CupertinoSwitch(value: Provider.of<homeprovider>(context,listen: true).isCheck,
                                       onChanged: (value){
                                         Provider.of<homeprovider>(context,listen: true).switc(value);
                                       },
                                       activeColor: CupertinoColors.destructiveRed,
                                     ),
                                   ],
                                 ),
                               ],
                             )
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 30,left: 8,bottom: 8,),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Misc",style: TextStyle(color:CupertinoColors.darkBackgroundGray,fontSize:20 ),),
                             ],
                           ),
                         ),
                         Container(
                             height: 80,
                             width: double.infinity,
                             color: CupertinoColors.extraLightBackgroundGray,
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.doc_text,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Terms of Service",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(CupertinoIcons.doc_on_clipboard,color: CupertinoColors.black,),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("open surce licenses",style: TextStyle(color: CupertinoColors.black),),
                                     ),
                                     Expanded(child: Container()),
                                     Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray),
                                   ],
                                 ),

                               ],
                             )
                         ),
                       ],
                     ),
                   )
                 ],
               )
            ],
          ),
        ),
    );
  }
}
