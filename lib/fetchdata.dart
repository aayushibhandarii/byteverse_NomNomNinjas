import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class showData extends StatefulWidget {
  const showData({super.key});

  @override
  State<showData> createState() => _showDataState();
}

class _showDataState extends State<showData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Data"),
        centerTitle: true,
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("user").snapshots(), builder: (context,snapshot){    //stream contains the path of the source of data and builder means whatever the data comes it get updated  // in builder we can take any another name instead of snapshot
          if(snapshot.connectionState == ConnectionState.active){      //connection between the firebase and the app has perfectly happened or not
              if(snapshot.hasData){
                return ListView.builder(       //to rebuild the list  //index is used as the id is changed with help of index
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index){
                    return ListTile(

                      leading: CircleAvatar(
                        child: Text("${index+1}"),
                      ),
                      title: Text("${snapshot.data!.docs[index]["email"]}"),
                      subtitle: Text("${snapshot.data!.docs[index]["name"]}"),

                    );

                },);
              }else if (snapshot.hasError){
                return Center(child: Text("${snapshot.hasError.toString()}"),);
              }else{
                return Center(child: Text("No data Found"),);
              }
          }else{
            return  Center(child: CircularProgressIndicator(),);
          }
      }),
    );
  }
}
