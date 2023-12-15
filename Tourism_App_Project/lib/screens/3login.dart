import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_app_project/screens/5home.dart';

import '../db/hivedb.dart';
import '../model/users.dart';
import '4signup.dart';

class Login_hive extends StatelessWidget {
  Login_hive({super.key});
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Here!!",
              style: GoogleFonts.dancingScript(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "User Name"),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: pass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            SizedBox(height: 15),
            MaterialButton(
              onPressed: () async {
                final users = await HiveDB.instance.getUsers();
                validateLogin(users);
              },
              shape: StadiumBorder(),
              color: Colors.green,
              child: Text(
                "Login Here",
                style: GoogleFonts.k2d(),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(Hive_Reg());
                },
                child: Text("Not a User? Register Here!!"))
          ],
        ),
      ),
    );
  }

  Future<void> validateLogin(List<Users> users) async {
    final email = email_controller.text.trim();
    final pwd = pass_controller.text.trim();
    bool userFound = false;
    if (email != "" && pwd != "") {
      await Future.forEach(users, (user) {
        if (user.email == email && user.password == pwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound == true) {
        Get.offAll(() => const HomeShared(
              data: [],
            ));
        Get.snackbar("Success", "Login Success", backgroundColor: Colors.green);
      } else {
        Get.snackbar("Error", "Login Failed, No user exist",
            backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fields mustnot be empty",
          backgroundColor: Colors.red);
    }
  }
}
