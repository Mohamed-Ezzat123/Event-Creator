import 'package:event_creator_app/Pages/Login/login_navigator.dart';
import 'package:event_creator_app/database/database_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  late LoginNavigator navigator;

  void loginFirebaseAuth(String email, String password) async {
    try {
      navigator.showLoading();
      final result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      navigator.hideLoading();
      navigator.showMessage('Login Successfully');

      var userObject = await DatabaseUtils.getUser(result.user?.uid ?? '');
      if (userObject == null) {
        navigator.hideLoading();
        navigator.showMessage('Register Failed');
      } else {
        navigator.navigatorToHome();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        navigator.hideLoading();
        navigator.showMessage('No user found for that email.');
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        navigator.hideLoading();
        navigator.showMessage('Wrong password provided for that user.');
        print('Wrong password provided for that user.');
      }
    }
  }
}
