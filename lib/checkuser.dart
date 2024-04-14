import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rasoiriders/login.dart';
import 'package:rasoiriders/main.dart';

import 'homepg.dart';

class checkUser extends StatefulWidget {
  const checkUser({super.key});

  @override
  State<checkUser> createState() => _checkUserState();
}

class _checkUserState extends State<checkUser> {
  @override
  Widget build(BuildContext context) {
    return checkuser();
  }

  checkuser(){             //function to check if user already exist or not
    final user = FirebaseAuth.instance.currentUser;     //if user already login or not
    if (user == null){
        return loginPage();
    } else{
      return HomePage();
    }

  }
}
