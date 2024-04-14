//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class uiHelper{
  static CustomTextField(TextEditingController controller, String text, IconData iconData, bool toHide){   //static keyword is used so that we can call this textfield function all over my app and toHide is taken so that the password text field can be hide and show  // function name is TextField
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 25),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          decoration: InputDecoration(
            hintText: text,
            suffixIcon: Icon(iconData),// two types of icons in a text field: suffixIcon(applied after the text field) and preffixIcon(applied before the text field)
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23)
            )
          ),
        ),
      );
  }

  static CustomButton(VoidCallback voidCallback, String text){
    return SizedBox(height: 50,width:300,child:ElevatedButton(onPressed: (){
      voidCallback();
    },style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25)
    ),backgroundColor: Colors.blue),child: Text(text, style: TextStyle(color: Colors.black,fontSize: 30),)),);
  }

  static CustomAlertBox(BuildContext context,String text){
        return showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(text),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("OK"))
            ],
          );
        });
  }
}