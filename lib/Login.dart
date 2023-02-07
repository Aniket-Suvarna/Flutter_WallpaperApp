import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  UserLogin createState() {
    return UserLogin();
  }
}

class UserLogin extends State<Login> {
  var Email;
  var Password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment-1",
      home: Scaffold(
        backgroundColor: Color(0XFF000000),
        appBar: AppBar(
          leading: Icon(
            Icons.games,
            color: Color(0xFF76FF03),
          ),
          backgroundColor: Color(0XFF000000),
          title: const Text("Gaming Wallpaper (ANIKET)",
          style: TextStyle(
            color: Color(0xFF76FF03),
          ),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/BG.png"),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xFF76FF03),
                      ),
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.email_rounded,
                          color: Color(0xFF76FF03),
                          size: 35,
                        ),
                        hintText: 'Enter the Email',
                        hintStyle: TextStyle(
                          color: Color(0xFFCCFF90),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color(0xFF76FF03),
                          fontSize: 35,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter valid Email";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() => Email = value);
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xFF76FF03),
                      ),
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.key_outlined,
                          color: Color(0xFF76FF03),
                          size: 42,
                        ),
                        hintText: 'Enter the Password',
                        hintStyle: TextStyle(
                          color: Color(0xFFCCFF90),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color(0xFF76FF03),
                          fontSize: 35,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter valid Password";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() => Password = value);
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent.shade400),
                      ),
                        onPressed: () async {
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: Email,
                              password: Password
                          );
                        },
                        child: Text("Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
