import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:flutter_application_1/calendar.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    FlutterAlarmClock.createAlarm(16, 51);
    FlutterAlarmClock.showAlarms();
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: const Text('Login', style: TextStyle(color: Colors.black)),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 118, 117, 117),
                ),
                child: Text(''),
              ),
              ListTile(
                title: const Text('Calendar'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendar()),
                  );
                },
              ),
              ListTile(
                title: const Text('Login'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Register'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              ),
            ],
          ),
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
                          'Welcome',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
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
                                  size: 20,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            //TODO FORGOT PASSWORD SCREEN GOES HERE
                          },
                          child: const Text('Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color.fromARGB(255, 132, 132, 132),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
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
                              'Login',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: const Text('New User? Create Account',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)))
                      ],
                    ),
                  ),
                ]))));
  }
}
