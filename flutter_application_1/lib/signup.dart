import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' show Image;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: const Text('Register', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color.fromARGB(255, 118, 117, 117),
                  Color.fromARGB(255, 0, 4, 7)
                ])),
            /*Color.fromRGBO(6, 127, 208, 1),
                  Color.fromRGBO(230, 59, 96, 1),
                  Color.fromRGBO(34, 59, 201, 1),
                  Color.fromARGB(255, 223, 223, 223)
                ])),*/
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Container(
                      height: 80,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/

                      child: Image.asset(
                        'assets/logo.png',
                        width: 60,
                        height: 104,
                      )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  height: 450,
                  width: 319,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Create account for new account',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Email Address',
                                suffixIcon: Icon(
                                  FontAwesomeIcons.envelope,
                                  size: 20,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: Icon(
                                  FontAwesomeIcons.eyeSlash,
                                  size: 17,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                suffixIcon: Icon(
                                  FontAwesomeIcons.eyeSlash,
                                  size: 17,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 132, 132, 132),
                              borderRadius: BorderRadius.circular(20)),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            },
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                      ])),
            ]),
          ),
        ));
  }
}
