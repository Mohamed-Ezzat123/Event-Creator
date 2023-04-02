import 'dart:async';

import 'package:event_creator_app/Pages/Home_Page.dart';
import 'package:event_creator_app/Pages/Method.dart' as Methods;
import 'package:event_creator_app/Register/register_navigator.dart';
import 'package:event_creator_app/Register/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> implements RegisterNavigator {
  String phone = '';

  String userName = '';

  String email = '';

  String password = '';

  var formKey = GlobalKey<FormState>();

  RegisterViewModel viewModel = RegisterViewModel();

  void initState() {
    super.initState();
    viewModel.navigator = this;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'User Name',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Your User Name',
                                  hintStyle: TextStyle(color: Colors.white),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              onChanged: (text) {
                                userName = text;
                              },
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'please enter user name';
                                }
                                return null;
                              },
                            ),
                            Text(
                              'Phone',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Phone',
                                  hintStyle: TextStyle(color: Colors.white),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              onChanged: (text) {
                                phone = text;
                              },
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'please enter phone';
                                }
                                return null;
                              },
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Email',
                                  hintStyle: TextStyle(color: Colors.white),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              onChanged: (text) {
                                email = text;
                              },
                              validator: (text) {
                                final bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text!);

                                if (text == null || text.trim().isEmpty) {
                                  return 'please enter email';
                                }
                                if (!emailValid) {
                                  return 'please valid email';
                                }
                                return null;
                              },
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Password',
                                  hintStyle: TextStyle(color: Colors.white),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              onChanged: (text) {
                                password = text;
                              },
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'please enter password';
                                }
                                if (text.length < 6) {
                                  return 'Password must be at least 6 chars.';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                valitadeForm();
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        horizontal: 90, vertical: 10)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                              child: const Text(
                                "Create Account",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void valitadeForm() async {
    if (formKey.currentState?.validate() == true) {
      viewModel.registerFirebaseAuth(email, password, phone, userName);
    }
  }

  @override
  void hideLoading() {
    Methods.hideLoading(context);
  }

  @override
  void showLoading() {
    Methods.showLoading(context, 'Loading...');
  }

  @override
  void showMessage(String message) {
    Methods.showMessage(context, message, 'OK', (context) {
      Navigator.pop(context);
    });
  }

  @override
  void navigatorToHome() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });
  }
}
