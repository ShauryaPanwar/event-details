import 'package:flutter/material.dart';
import 'package:event_details/utils/spaces.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:event_details/widgets/logintextfield.dart';
import 'package:provider/provider.dart';
import 'package:event_details/service/auth_services.dart';
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();


  Future<void> loginuser(BuildContext context) async {
    // if(_formkey.currentState != null && _formkey.currentState!.validate()){
    //   print("Logged in !!");
    //   print(usernamecontroller.text);
    //   print(passwordcontroller.text);
    //   await context.read<Auth>().loginuser(usernamecontroller.text);
    //
    //
    // }


    if (usernamecontroller.text == 'fake-user' &&
        passwordcontroller.text == 'fake-pass'){
      print('object');
      Navigator.pushReplacementNamed(context, '/homepage');
    }
    else{
      print('Ohio');
      Flushbar(
        title: 'Invalid Credentials',
        message:
        'Enter Valid Username and Password',
        duration: Duration(seconds: 3),
      ).show(context);
    }
  }


  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Lets Login !!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              verticalspacing(11),
              Text(
                'Enter Your Credentials',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              verticalspacing(15),
              Container(
                height: 170,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.deepPurple,
                  //   width: 2,
                  // ),
                  // color: Colors.yellow,
                  image: DecorationImage(
                    image: AssetImage('assets/loginpage.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              verticalspacing(15),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Loginwidget(
                      // validator: (value) {
                      //   if (value != null && value.isNotEmpty && value!="fake-user") {
                      //     return "Invalid Username Input";
                      //   } else if (value != null && value.isEmpty) {
                      //     return "Please type your Username";
                      //   }
                      //   return null;
                      // },
                        controler: usernamecontroller,
                        hinttext: "Enter Your Username"),
                    verticalspacing(12),
                    Loginwidget(
                      // validator: (value) {
                      //   if (value != null && value.isNotEmpty && value!="fake-pass") {
                      //     return "Invalid Password Input";
                      //   } else if (value != null && value.isEmpty) {
                      //     return "Please type your Password";
                      //   }
                      //   return null;
                      // },
                        aster: true,
                        controler: passwordcontroller,
                        hinttext: "Enter Your Password"),
                  ],
                ),
              ),
              verticalspacing(11),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blue;
                            return Colors.blue;
                          })),

                  // ElevatedButton.styleFrom(
                  //   backgroundColor: Colors.deepPurple
                  // ),
                  onPressed: () async {
                    await loginuser(context);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
