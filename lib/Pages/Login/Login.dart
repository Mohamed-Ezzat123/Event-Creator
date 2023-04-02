import 'dart:async';

import 'package:event_creator_app/Pages/Home_Page.dart';
import 'package:event_creator_app/Pages/Login/login_navigator.dart';
import 'package:event_creator_app/Pages/Login/login_view_model.dart';
import 'package:event_creator_app/Pages/Method.dart' as Methods;
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> implements LoginNavigator {
  String email = '';

  String password = '';

  var formKey = GlobalKey<FormState>();

  LoginViewModel viewModel = LoginViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.navigator = this;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Log In",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
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
                          SizedBox(
                            height: 10,
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
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                            child: const Text(
                              "LOGIN",
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
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an acount? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void valitadeForm() {
    if (formKey.currentState?.validate() == true) {
      viewModel.loginFirebaseAuth(email, password);
    }
  }

  @override
  void hideLoading() {
    Methods.hideLoading(context);
  }

  @override
  void showLoading() {
    Methods.showLoading(context, 'Loading');
  }

  @override
  void showMessage(String message) {
    Methods.showMessage(context, message, 'OK', (context) {
      Navigator.pop(context);
    });
  }

  @override
  void navigatorToHome() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });
  }
}
