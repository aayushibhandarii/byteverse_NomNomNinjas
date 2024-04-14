import 'package:flutter/material.dart';
class MapLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Location'),
      ),
      body: const Center(
        child: Text('Select location from maps here'),
      ),
    );
  }

}