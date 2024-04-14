import 'package:flutter/material.dart';


class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Location Details'),
      ),
      body: LocationForm(),
    );
  }
}

class LocationForm extends StatefulWidget {
  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  final TextEditingController _localityController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _cityController,
              decoration: const InputDecoration(labelText: 'City Name'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter city name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _pinCodeController,
              decoration: const InputDecoration(labelText: 'Pin Code'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter pin code';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _pinCodeController,
              decoration: const InputDecoration(labelText: 'Locality'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter locality';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _pinCodeController,
              decoration: const InputDecoration(labelText: 'Landmark'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter landmark';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  // Save the location details
                  String city = _cityController.text;
                  String pinCode = _pinCodeController.text;
                  String locality = _localityController.text;
                  String landmark = _landmarkController.text;
                  // show an alert dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Location Saved'),
                        content: const Text('Your location details have been saved.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              //navigate to the homee page
                              Navigator.pushNamed(context, '/homepg');
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('Save Location'),
            ),

          ],
        ),
      ),
    );
  }
}

