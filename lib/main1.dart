import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rasoiriders/adddata.dart';
import 'package:rasoiriders/checkuser.dart';
import 'package:rasoiriders/fetchdata.dart';
import 'package:rasoiriders/login.dart';
import 'package:rasoiriders/paymentgateway.dart';
import 'package:rasoiriders/signup.dart';
import 'package:rasoiriders/vegan.dart';
import 'diet.dart';
import 'drinks.dart';
import 'firebase_options.dart';
import 'forgotpassword.dart';
import 'gym.dart';
import 'homepg.dart';
import 'location.dart';
import 'mealplan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/getStarted': (context) => GetStartedPage(),
        '/check': (context) => checkUser(),
        '/login': (context) => loginPage(),
        '/signup': (context) => signupPage(),
        '/forgot': (context) => forgotPassword(),
        '/homepg': (context) => HomePage(),
        '/gym': (context) => GymPage(),
        '/vegan': (context) => VeganPage(),
        '/diet': (context) => DietPage(),
        '/drinks': (context) => DrinksPage(),
        '/location': (context) => LocationPage(),
        '/mealplan': (context) => MealPlan(),
        '/payment': (context) => paymentGateway(),





      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/getStarted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body:Center(
            child: Image.asset('assets/images/rasoi_.png')

        )

    );
  }
}

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/bg__.png', // Adjust path according to your asset location
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/check');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}


