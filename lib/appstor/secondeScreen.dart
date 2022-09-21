import 'package:flutter/material.dart';

class app_cickScreen extends StatefulWidget {
  const app_cickScreen({Key? key}) : super(key: key);

  @override
  State<app_cickScreen> createState() => _app_cickScreenState();
}

class _app_cickScreenState extends State<app_cickScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back),
            ),
          ),
          body: Container(

          ),
     )
    );
  }
}
