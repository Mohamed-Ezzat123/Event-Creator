import 'package:event_creator_app/Register/register_navigator.dart';
import 'package:event_creator_app/database/database_utils.dart';
import 'package:event_creator_app/model/MyUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  late RegisterNavigator navigator;

  void registerFirebaseAuth(
      String email, String password, String phone, String userName) async {
    try {
      navigator.showLoading();
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var user = MyUser(
          id: result.user?.uid ?? '',
          phone: phone,
          userName: userName,
          email: email);
      print('id ${result.user?.uid}');

      var dataUser = await DatabaseUtils.registerUser(user);

      navigator.hideLoading();
      navigator.showMessage('Register Successfully');
      navigator.navigatorToHome();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        navigator.hideLoading();
        navigator.showMessage('The password provided is too weak.');
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        navigator.hideLoading();
        navigator.showMessage('The account already exists for that email.');
        print('The account already exists for that email.');
      }
    } catch (e) {
      navigator.hideLoading();
      navigator.showMessage('Something Wrong');
      print(e);
    }
  }
}
