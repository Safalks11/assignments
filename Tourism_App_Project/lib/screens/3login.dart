import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourism_app_project/screens/4signup.dart';
import 'package:tourism_app_project/screens/5home.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginShared(),
//   ));
// }

class LoginShared extends StatefulWidget {
  const LoginShared({Key? key}) : super(key: key);

  @override
  _LoginSharedState createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final userName = TextEditingController();
  final passWord = TextEditingController();
  bool newUser = true; // Assume the user is new until proven otherwise
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    checkUserAlreadyLogin();
  }

  void checkUserAlreadyLogin() async {
    prefs = await SharedPreferences.getInstance();
    newUser = prefs.getBool('firstlogin') ?? true;

    if (!newUser) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeShared()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: userName,
              decoration: const InputDecoration(
                labelText: "UserName",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passWord,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: validateAndLogin,
              child: const Text("Login"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegistrationPage()));
                },
                child: const Text('Go to Registration Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateAndLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedUserName = prefs.getString('uname');
    String? storedPassword = prefs.getString('pwd');

    String enteredUserName = userName.text;
    String enteredPassword = passWord.text;

    if (storedUserName == enteredUserName &&
        storedPassword == enteredPassword) {
      // Successful login, set 'firstlogin' to false to indicate the user has registered
      await prefs.setBool('firstlogin', false);

      // Navigate to the home page
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeShared()));
    } else {
      // Show an error message for login failure
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Failed'),
          content: const Text('Invalid username or password. Please try again.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
