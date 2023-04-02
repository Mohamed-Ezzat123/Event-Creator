import 'package:event_creator_app/Pages/Home_Page.dart';
import 'package:event_creator_app/Pages/Login/Login.dart';
import 'package:event_creator_app/Pages/Welcome.dart';
import 'package:event_creator_app/Register/Signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => Welcome(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}
