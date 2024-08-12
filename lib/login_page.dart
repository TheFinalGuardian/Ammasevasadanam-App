import 'package:flutter/material.dart';

TextEditingController userControl = TextEditingController();
TextEditingController pwControl = TextEditingController();


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(  
      body: Column(
        children: [
          TextField(
            controller: userControl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username",
            ),
          ),
          TextField(
            controller: pwControl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
          ElevatedButton(
            child: const Text("Hello"),
            onPressed: (){
              createUser();
              print("Success");
            },
            ),
        ],
      ),
    );
  }
}
void createUser(){
  //FirebaseAuth.instance.createUserWithEmailAndPassword(email: userControl.text, password: pwControl.text);
}
