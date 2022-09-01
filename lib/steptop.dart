import 'package:androidios_stting/stepper_providre.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class steptop_Screen extends StatefulWidget {
  const steptop_Screen({Key? key}) : super(key: key);

  @override
  State<steptop_Screen> createState() => _steptop_ScreenState();
}

class _steptop_ScreenState extends State<steptop_Screen> {
  var homeproviderfalse;
  var homeproviderTrue;
  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<stepper_Provider>(context, listen: false);
    homeproviderTrue = Provider.of<stepper_Provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.red,
           title: Text("Stepper App"),
         ),
          body: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.red,
              ),
            ),
            child: Stepper(
              type: StepperType.vertical,
              physics: BouncingScrollPhysics(),
              elevation: 15,
              currentStep: homeproviderTrue.i,
              onStepCancel: (){homeproviderfalse.decrement();},
              onStepContinue: (){homeproviderfalse.add();},
              onStepTapped: (value){homeproviderfalse.stepClick(value);},
              steps: [
                Step(isActive: true,title: Text("SignUp"),
                    content: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            label: Text("first Name*"),
                            icon: Icon(Icons.person_sharp),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: Text("Email-id"),
                            icon: Icon(Icons.email),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: Text("Password*"),
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: Text("conform Password"),
                            icon: Icon(Icons.lock),
                          ),
                        ),
                      ],
                    ),
                ),
                Step(isActive: true,title: Text("Login"),
                    content: Column(
                      children: [
                        TextField(decoration: InputDecoration(label: Text("User Name*"),icon: Icon(Icons.person_sharp)),),
                        TextField(decoration: InputDecoration(label: Text("Password*"),icon: Icon(Icons.email)),),
                  ],
                )),
                Step(isActive: true,title: Text("home"), content: TextField(decoration: InputDecoration(label: Text("last Name")),)),


              ],

            ),
          ),
    ));
  }
}
