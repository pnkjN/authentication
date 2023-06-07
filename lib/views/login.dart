import 'package:authentication/constant.dart';
import 'package:authentication/localdb.dart';
import 'package:authentication/services/auth.dart';
import 'package:authentication/views/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   signWithMethod() async {
    await signInWithGoogle();
    constant.name = (await LocalDataSaver.getName())!;
    constant.email = (await LocalDataSaver.getEmail())!;
    constant.img = (await LocalDataSaver.getImg())!;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Profile()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login to App "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(Buttons.Google, onPressed: () {
              signWithMethod();
            })
          ],
        ),
      ),
    );
  }
}
