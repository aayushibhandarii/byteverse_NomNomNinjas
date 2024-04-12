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
      appBar: AppBar(title: Text("Show Data"),
      centerTitle: true,),
      body: StreamBuilder(stream: stream, builder: builder),      //we fetch data using streammbuilder  //here stream means the source from where the data is going to come
    );
  }
}
