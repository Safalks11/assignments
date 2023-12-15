import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBaYwUYxzSFhsBeQ6WiHImqlyg65C2K4F0",
          appId: "1:198780608727:android:04dd494a6fb3e695c2d092",
          messagingSenderId: "",
          projectId: "firestoragee-3f876",
          storageBucket: "firestoragee-3f876.appspot.com"));
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Signin"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  signInWithPhone(context);
                },
                child: const Text("Login with Phone"),
              ),
      ),
    );
  }

  void signInWithPhone(BuildContext context) {}
}
