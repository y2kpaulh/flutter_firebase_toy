import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState()  {
    signup_test();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'),),
      body: const Placeholder(),
    );
  }

  Future signup_test() async {
    final result = await signUp(
      "abcd@test.com",
      "123456abc",
    );
    if (result) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("회원가입 성공")),
        );

      }
    }
  }

  Future<bool> signUp(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      await FirebaseFirestore.instance.collection("users").add({
        "uid": credential.user?.uid ?? "",
        "email": credential.user?.email ?? ""
      });
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print("패스워드가 약합니다.");
      } else if (e.code == "email-already-in-use") {
        print("이미 정보가 존재합니다.");
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
