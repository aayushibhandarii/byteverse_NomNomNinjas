import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class makeCall extends StatefulWidget {
  const makeCall({super.key});

  @override
  State<makeCall> createState() => _makeCallState();
}

class _makeCallState extends State<makeCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest API Call'),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FlutterPhoneDirectCaller.callNumber('+918290489899');
          },
          child: const Text('Call'),
        ),
      ),
    );
  }
}