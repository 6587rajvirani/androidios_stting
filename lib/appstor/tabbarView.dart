import 'package:androidios_stting/appstor/firstScreen.dart';
import 'package:androidios_stting/appstor/gamefirstScreen.dart';
import 'package:flutter/material.dart';

class apps_TabBar extends StatefulWidget {
  const apps_TabBar({Key? key}) : super(key: key);

  @override
  State<apps_TabBar> createState() => _apps_TabBarState();
}

class _apps_TabBarState extends State<apps_TabBar> {

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
                      length: 4, // length of tabs
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
                              Tab(text: "Categories"),
                              Tab(text: "Editor's Choice"),
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
