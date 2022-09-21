import 'package:flutter/material.dart';

import '../apps/view/firstScreen.dart';

class Game_Tabbar extends StatefulWidget {
  const Game_Tabbar({Key? key}) : super(key: key);

  @override
  State<Game_Tabbar> createState() => _Game_TabbarState();
}

class _Game_TabbarState extends State<Game_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: ListTile(
                        leading: Icon(Icons.menu,size: 25),
                        title: Text("Search for apps & games",style: TextStyle(color: Colors.grey,fontSize: 17),),
                        trailing: Icon(Icons.mic ),
                      ),
                    ),
                  ),
                ),
                DefaultTabController(
                  length: 6, // length of tabs
                  initialIndex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicatorWeight: 3,
                        indicatorColor: Colors.green,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                        tabs: [
                          Tab(text: "For You"),
                          Tab(text: "Top Charts"),
                          Tab(text: "Kids"),
                          Tab(text: "Events"),
                          Tab(text: "Premium",),
                          Tab(text: "Categories",)
                        ],
                      ),
                      Container(height:0.7 ,width: double.infinity,color: Colors.black,),
                      SizedBox(
                        height: 820,
                        child: Column(
                          children: [
                            Expanded(
                              child: TabBarView(
                                children: [
                                  screenone(),
                                  screenone(),
                                  screenone(),
                                  screenone(),
                                  screenone(),
                                  screenone(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
