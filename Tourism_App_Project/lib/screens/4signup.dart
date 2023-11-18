import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../db/hivedb.dart';
import '../model/users.dart';

class Hive_Reg extends StatelessWidget {
  Hive_Reg({super.key});
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Registration Page"),
            SizedBox(height: 15),
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Name"),
            ),
            SizedBox(height: 15),
            TextField(
              controller: email_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "User Name"),
            ),
            SizedBox(height: 15),
            TextField(
              controller: pass_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
            SizedBox(height: 15),
            MaterialButton(
              onPressed: () async {
                final userList = await HiveDB.instance.getUsers();
                validateSignup(userList);
                name_controller.clear();
                email_controller.clear();
                pass_controller.clear();
              },
              shape: StadiumBorder(),
              color: Colors.pink,
              child: Text("Register Now"),
            )
          ],
        ),
      ),
    );
  }

  void validateSignup(List<Users> userList) async {
    final name = name_controller.text;
    final email = email_controller.text;
    final pswrd = pass_controller.text;

    bool userExist = false;
    final validateEmail = EmailValidator.validate(email);
    if (name != "" && email != "" && pswrd != "") {
      if (validateEmail == true) {
        await Future.forEach(userList, (user) {
          if (user.email == email) {
            userExist = true;
          } else {
            userExist = false;
          }
        });
        if (userExist == true) {
          Get.snackbar("Error", "User Already Exists");
        } else {
          final validatePassword = checkPassword(pswrd);
          if (validatePassword == true) {
            final user = Users(email: email, password: pswrd, name: name);
            await HiveDB.instance.addUser(user);
            Get.back();
            Get.snackbar("Success", "User Registration Success!!");
          }
        }
      } else {
        Get.snackbar("Error", "Enter a valid email");
      }
    } else {
      Get.snackbar("Error", "Please fill all the fields");
    }
  }

  bool checkPassword(String pswrd) {
    if (pswrd.length < 6) {
      Get.snackbar("Error", "Password length must be > 6");
      return false;
    } else {
      return true;
    }
  }
}
