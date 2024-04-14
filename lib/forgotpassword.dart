import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rasoiriders/uiHelper.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  TextEditingController emailController = TextEditingController();
  forgotpassword(String email)async{
    if (email==""){
      return uiHelper.CustomAlertBox(context, "Enter an email to reset password");
    }else{
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          uiHelper.CustomTextField(emailController, "Email", Icons.mail, false),
          SizedBox(height: 20,),
          uiHelper.CustomButton(() {
            forgotpassword(emailController.text.toString());
          },"Reset Password")
          
        ],
      ),
    );
  }
}
