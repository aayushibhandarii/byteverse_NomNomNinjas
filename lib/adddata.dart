import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'uiHelper.dart';

class addData extends StatefulWidget {
  const addData({super.key});

  @override
  State<addData> createState() => _addDataState();
}

class _addDataState extends State<addData> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  addData(String email,String name)async{
    if(email =="" && name==""){
      return uiHelper.CustomAlertBox(context, "Enter Required Field");
    }else{
      FirebaseFirestore.instance.collection("user").doc(email).set({
        "email" : email,
        "name": name,
      }).then((e) {
        Text("data Inserted");
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Enter email",
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  )
                ],
              ),
          ),
          SizedBox(height: 30,),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              children: [
                  TextField(
                  controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      suffixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                  )
                ],
              ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            addData(emailController.text.toString(), nameController.text.toString());
          }, child: Text("Save Data"))
    ]
      )
        );

  }
}
