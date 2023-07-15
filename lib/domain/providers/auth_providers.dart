import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assistance/data/models/user_model.dart';
import 'package:roadside_assistance/data/repositories/auth_repo.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoadingSignup = false;
  bool _isLoadingSignin = false;
  // bool _isUserLoggedIn = false;
  bool _loginSuccess = false;
  bool _signupSuccess = false;
  final _authRepo = AuthRepository();

  // getters
  bool get isLoadingSignup => _isLoadingSignup;
  bool get isLoadingSignin => _isLoadingSignin;
  bool get loginSuccess => _loginSuccess;
  bool get signupSuccess => _signupSuccess;

  // start
  void startLoadingSignup() {
    _isLoadingSignup = true;
    notifyListeners();
  }

  void startLoadingSignin() {
    _isLoadingSignin = true;
    notifyListeners();
  }

  // stop

  void stopLoadingSignup() {
    _isLoadingSignup = false;
    notifyListeners();
  }

  void stopLoadingSignin() {
    _isLoadingSignin = false;
    notifyListeners();
  }

  void setLoginSuccess(bool value) {
    _loginSuccess = value;
    notifyListeners();
  }

  void setSignupSuccess(bool value) {
    _signupSuccess = value;
    notifyListeners();
  }

  // signinuser
  Future<void> signInUser(String email, String password) async {
    startLoadingSignin();
    try {
      await Future.delayed(const Duration(seconds: 2));
      await _authRepo.signIn(email, password).then((value) {
        value!.uid.isNotEmpty ? setLoginSuccess(true) : setLoginSuccess(false);
      });
      stopLoadingSignin();
    } catch (e) {
      debugPrint("Failed to sign in user with error: $e");
      setLoginSuccess(false);
      stopLoadingSignin();
      rethrow;
    }
    notifyListeners();
  }

  // signupuser
  Future<void> signUpUser(UserModel userModel, String password) async {
    startLoadingSignup();
    try {
      User? response = await _authRepo.signUp(userModel.email, password);
      userModel.copyWith(driverId: response!.uid);
      await _authRepo.addUserToFirestore(
          response.uid, userModel.copyWith(driverId: response.uid));
      if (response.uid.isNotEmpty) {
        setSignupSuccess(true);
      }
      stopLoadingSignup();
    } catch (e) {
      debugPrint("Failed to sign up user with error: $e");
      setSignupSuccess(false);
      stopLoadingSignup();
      rethrow;
    }
    notifyListeners();
  }
}
