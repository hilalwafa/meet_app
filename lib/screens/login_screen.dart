import 'package:flutter/material.dart';
import 'package:meet_app/resources/auth_methods.dart';
import 'package:meet_app/widgets/custom_button.dart';

import '../main.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Start or join a meeting",style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: h*0.035
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset("assets/images/onboarding (1).jpg"),
          ),
           CustomButton(text: "Google Sign In",
             onPressed: () async{
              bool res = await _authMethods.signInWithGoogle(context);
              if (res){
                Navigator.pushNamed(context, '/home');
              }
             }, )
        ],
      ),

    );
  }
}
