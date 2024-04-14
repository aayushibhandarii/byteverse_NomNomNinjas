import 'package:flutter/material.dart';
import 'package:rasoiriders/forgotpassword.dart';
import 'package:rasoiriders/main.dart';
import 'package:rasoiriders/signup.dart';
import 'package:rasoiriders/uiHelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rasoiriders/location.dart';

import 'homepg.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController emailController = TextEditingController();        //used to get email
  TextEditingController passwordController = TextEditingController();     //used to get password

  login(String email, String password)async{     //in this through email and password we will use email authentication services
    if (email=="" && password==""){
      uiHelper.CustomAlertBox(context, "Enter Required Field");
    } else{
      UserCredential? usercredential;         //  ? means it can be null
      try{
        usercredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);// as we are handling with future values hence we use async and await     // if here values are putted by the user then create a new user
        return LocationSelectionPage();}
      on FirebaseAuthException catch(e){        // to handle the exception in try   //ex: if user created another account with same email and password or network issue while entering email or password
        return uiHelper.CustomAlertBox(context, e.code.toString());  // as exception is generated through code and to string() convert it to string so that user can understand
      }
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(      //to built screen of the app
      appBar: AppBar(
        title: Text("Login Page"),
            centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [      //column widget is used for the text field to appear one below another
                uiHelper.CustomTextField(emailController, "Email", Icons.mail, false),        //toHide is false as we don't need to hide the email
                uiHelper.CustomTextField(passwordController, "Password", Icons.password, true),   //toHide is true as we need to hide the password the user enter
                SizedBox(height: 30),        //height is taken 30 as we are going to show a button below it
                uiHelper.CustomButton(() {
                  login(emailController.text.toString(), passwordController.text.toString());
                }, "Login"),
                SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text("Already have an account?",style: TextStyle(fontSize: 17),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/signup');        // to navigate to signup page when signup is clicked
              }, child: Text("SignUp", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),))
            ]
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/forgot');
          }, child: Text("Forgot Password?"))
      ],)
    );

  }
}
