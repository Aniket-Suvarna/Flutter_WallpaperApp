import 'package:assignment1/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GhostRecon extends StatefulWidget {
  const GhostRecon({Key? key}) : super(key: key);
  @override
  _GhostRecon createState() {
    return _GhostRecon();
  }
}

class _GhostRecon extends State<GhostRecon> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ghost Recon",
      home: Scaffold(
        backgroundColor: Color(0xFFCFD8DC),
        appBar: AppBar(
          backgroundColor: Color(0xFFB0BEC5),
          title: const Text("Ghost Recon",
            style: TextStyle(
              color: Color(0xFF263238),
              fontSize: 30,
            ),
          ),
          leading: IconButton(
            tooltip: 'Back',
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xFF263238),
            iconSize: 30,
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/G1.jpg"),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/G2.jpg"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/G3.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/G4.png"),
            ],
          ),
        ),
      ),
    );
  }
}
