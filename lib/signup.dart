import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rasoiriders/main.dart';
import 'package:rasoiriders/uiHelper.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signUp(String email, String password)async{     //in this through email and password we will use email authentication services
      if (email=="" && password==""){
        return uiHelper.CustomAlertBox(context, "Enter Required Field");
      } else{
        UserCredential? usercredential;         //  ? means it can be null
        try{
          usercredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value){       // .then is used to tell what to do user created the account
            Navigator.pushNamed(context, '/homepg');
          });    // as we are handling with future values hence we use async and await     // if here values are putted by the user then create a new user
          }
        on FirebaseAuthException catch(e){        // to handle the exception in try   //ex: if user created another account with same email and password or network issue while entering email or password
          return uiHelper.CustomAlertBox(context, e.code.toString());  // as exception is generated through code and to string() convert it to string so that user can understand
        }
      }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          uiHelper.CustomTextField(nameController, "Name",Icons.abc, false),
          uiHelper.CustomTextField(emailController, "email", Icons.mail, false),
          uiHelper.CustomTextField(passwordController, "password", Icons.password, true),
          SizedBox(height: 30,),
          uiHelper.CustomButton(() { signUp(emailController.text.toString(),passwordController.text.toString());}, "Sign In")
        ],
      ),
    );
  }
}
