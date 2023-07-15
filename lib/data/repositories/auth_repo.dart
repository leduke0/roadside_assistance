import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assistance/data/models/user_model.dart';

class AuthRepository {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } catch (e, stack) {
      debugPrint("Login in user failurer: $e, stacktrace: $stack");
      rethrow;
    }
    // on FirebaseAuthException catch (e, stacktrace) {
    //   debugPrint(
    //       "Failed to sign in user with error: $e and stacktrace: $stacktrace");
    //   rethrow;
    // }
  }

  // sign up
  Future<User?> signUp(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e, stacktrace) {
      debugPrint(
          "Failed to sign up user with error: $e and stacktrace: $stacktrace");
      rethrow;
    }
  }

  // add user to firestore
  Future<void> addUserToFirestore(String uid, UserModel user) async {
    try {
      await _firestore.collection("users").doc(uid).set(user.toJson());
    } on FirebaseException catch (e, stacktrace) {
      debugPrint(
          "Failed to add user to firestore with error: $e and stacktrace: $stacktrace");
      rethrow;
    }
  }
}
