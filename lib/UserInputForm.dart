import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:assignment1/Home.dart';

class UserInputForm extends StatefulWidget {
  const UserInputForm({Key? key}) : super(key: key);

  @override
  _UserInputForm createState() {
    return _UserInputForm();
  }
}

class _UserInputForm extends State<UserInputForm> {
  var Name;
  var Email;
  var Phone;
  var Feedback;
  final _formKey = GlobalKey<FormState>();
  CollectionReference FeedBackForm = FirebaseFirestore.instance.collection('FeedBackForm');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UserInputForm",
      home: Scaffold(
        backgroundColor: Color(0XFF000000),
        appBar: AppBar(
          leading: IconButton(
            tooltip: 'Back',
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xFF76FF03),
            iconSize: 30,
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          backgroundColor: Color(0XFF000000),
          title: const Text("User Input Form",
            style: TextStyle(
              color: Color(0xFF76FF03),
            ),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/BG2.png"),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF76FF03),
                    ),
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person,
                        color: Color(0xFF76FF03),
                        size: 35,
                      ),
                      hintText: 'Enter your full name',
                      hintStyle: TextStyle(
                        color: Color(0xFFCCFF90),
                      ),
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Color(0xFF76FF03),
                        fontSize: 35,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Name";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() => Name = value);
                    },
                  ),

                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF76FF03),
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Color(0xFF76FF03),
                        size: 35,
                      ),
                      hintText: 'Enter a phone number',
                      hintStyle: TextStyle(
                        color: Color(0xFFCCFF90),
                      ),
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                        color: Color(0xFF76FF03),
                        fontSize: 35,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value==TextInputType.phone) {
                        return "Please enter valid phone number";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() => Phone = value);
                    },
                  ),

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

                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF76FF03),
                    ),
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.message,
                        color: Color(0xFF76FF03),
                        size: 35,
                      ),
                      hintText: 'Enter the Feedback',
                      hintStyle: TextStyle(
                        color: Color(0xFFCCFF90),
                      ),
                      labelText: 'Feedback',
                      labelStyle: TextStyle(
                        color: Color(0xFF76FF03),
                        fontSize: 35,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter valid Feedback";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() => Feedback = value);
                    },
                  ),

                  Container(

                      padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent.shade400),
                        ),
                        child: const Text('Submit',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                        onPressed: () {

                          FeedBackForm.add(
                            {
                              'Name':Name,
                              'Phone':Phone,
                              'Email':Email,
                              'Feedback':Feedback,
                            }
                          ).then((value) => print("VALUES ADD"));

                          if (_formKey.currentState!.validate()) {
                            Scaffold.of(context).showSnackBar(
                                const SnackBar(content: Text('Got The Feed Back')));
                          }
                        },
                      )),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
