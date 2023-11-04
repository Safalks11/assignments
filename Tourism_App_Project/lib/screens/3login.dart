import 'package:flutter/material.dart';
import 'package:tourism_app_project/screens/4signup.dart';
import 'package:tourism_app_project/screens/5home.dart';

import '../db/sql_functions.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: SingleChildScrollView(
          child: Form(
              key: formkey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextFormField(
                      controller: uname_controller,
                      validator: (username) {
                        if (username!.isEmpty) {
                          return "Name is required";
                        } else
                          return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextFormField(
                      controller: pass_controller,
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if (valid) {
                          LoginCheck(
                              uname_controller.text, pass_controller.text);
                        } else {}
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not an User?.."),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: const Text(
                            "Signup!!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ],
                  )
                ],
              )),
        ));
  }

  void LoginCheck(String name, String password) async {
    var data = await SQLHelper.CheckLogin(name, password);
    if (data.isNotEmpty) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeShared(data: data)));
      print("Login Success");
    } else if (data.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          action: SnackBarAction(label: 'UNDO', onPressed: () {}),
          content: const Text('Invalid username / password')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignupPage()));
      print("Login Failed");
    }
  }
}
