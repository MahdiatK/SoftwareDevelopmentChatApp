import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  //instance of auth and firestore 
  final FirebaseAuth _auth = FirebaseAuth.instance; 
  final FirebaseFirestore _firestore =  FirebaseFirestore.instance;

  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password, );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up
  Future<UserCredential> registerWithEmailPassword(String email, String password) async {
    try {
      // create user 
      UserCredential userCredential = 
          await _auth.createUserWithEmailAndPassword(
        email: email,
       password: password,
      );

      // save user info in separate document
      _firestore.collection("Users").doc(userCredential.user!.uid).set(
        {
          
        },
      );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  //errors

}
