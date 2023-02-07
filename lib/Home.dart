import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Components/Division2.dart';
import 'Components/AssassianCreed.dart';
import 'Components/GhostRecon.dart';
import 'Components/WatchDogs.dart';
import 'UserInputForm.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  MyHome createState() {
    return MyHome();
  }
}
class MyHome extends State<Home> {
  CollectionReference person = FirebaseFirestore.instance.collection('Person');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Scaffold(
        backgroundColor: Color(0x1F000000),
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          iconTheme: IconThemeData(color: Color(0xFF76FF03)),
          title: const Text("Home",
          style: TextStyle(
            color: Color(0xFF76FF03),
          ),),
          actions: [
            IconButton(
              tooltip: 'Logout',
              color: Color(0xFF76FF03),
              onPressed:() => FirebaseAuth.instance.signOut(),
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/WD2.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A1.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Table(
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/W6.png",width: 800, height: 425,),
                        ],
                      ),
                      Column(
                        children: [
                            Image.asset("assets/WD1.png",width: 800, height: 425,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A5.jpg"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/G4.png"),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color(0x61000000),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child:Text("Menu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF76FF03),
                  fontSize: 60,
                ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
              ListTile(
                title:Text("Division 2",
                style: TextStyle(
                  color: Color(0xFF76FF03),
                  fontSize: 40,
                ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Division2()));
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
              ListTile(
                title:Text("Assassian Creed",
                  style: TextStyle(
                    color: Color(0xFF76FF03),
                    fontSize: 36,
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AssassianCreed()));
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
              ListTile(
                title:Text("Ghost Recon",
                  style: TextStyle(
                    color: Color(0xFF76FF03),
                    fontSize: 40,
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GhostRecon()));
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
              ListTile(
                title:Text("Watch Dogs",
                  style: TextStyle(
                    color: Color(0xFF76FF03),
                    fontSize: 40,
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WatchDogs()));
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
              ListTile(
                title:Text("User Input",
                  style: TextStyle(
                    color: Color(0xFF76FF03),
                    fontSize: 40,
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInputForm()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
