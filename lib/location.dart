import 'package:flutter/material.dart';


import 'locationm.dart';

class LocationSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showManualLocationDialog(context);
              },
              child: const Text('Enter Location Manually'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _selectLocationFromMap(context);
              },
              child: const Text('Enter Location Using Maps'),
            ),
          ],
        ),
      ),
    );
  }

  void _showManualLocationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Enter Location Manually"),
          content: const Text("Are you sure you want to enter location manually?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationPage(),
                  ),
                );
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  void _selectLocationFromMap(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Location From Maps"),
          content: const Text("Are you sure you want to select location from maps?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepg');
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }
}
