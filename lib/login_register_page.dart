import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';
import 'dart:async';
class LoginRegisterPage extends StatefulWidget{
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async{
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text
        );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async{
    try {
      await Auth().createWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text
        );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title(){
    return const Text('Ammasevasadanam Administration App');
  }

  Widget _usernameField(
    TextEditingController controller,
    ) {
      return TextField(
        controller: controller,
        obscureText: false,
        decoration: const InputDecoration(
          labelText: "Username",
        ),
      );
    }

 Widget _passwordField(
    TextEditingController controller,
    ) {
      return TextField(
        controller: controller,
        obscureText: true,
        decoration: const InputDecoration(
          labelText: "Password",
        ),
      );
    }


  Widget _errorMessage(){
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton(){
    return ElevatedButton(
      onPressed: (){
        signInWithEmailAndPassword();
        fetch();
        Future.delayed(const Duration(seconds: 10), () {});
      },
      child: const Text("Login"),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _usernameField(_controllerEmail),
            _passwordField(_controllerPassword),
            _errorMessage(),
            _submitButton(),
          ],
        )
      ),
    );
  }
}