import 'package:assignment1/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssassianCreed extends StatefulWidget {
  const AssassianCreed({Key? key}) : super(key: key);
  @override
  _AssassianCreed createState() {
    return _AssassianCreed();
  }
}

class _AssassianCreed extends State<AssassianCreed> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assassian Creed",
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
          backgroundColor: Color(0xDD000000),
          title: const Text("Assassian Creed",
            style: TextStyle(
              color: Color(0xFFD50000),
              fontSize: 30,
            ),
          ),
          leading: IconButton(
            tooltip: 'Back',
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xFFD50000),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                onLongPress: (){
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Center(
                  child: AnimatedContainer(
                    width: selected ? 900.0 : 750.0,
                    height: selected ?  700.0 : 600.0,
                    alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: selected ? AssassianCreedBody() : Image.asset("assets/A2.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class AssassianCreedBody extends StatefulWidget {
  const AssassianCreedBody({Key? key}) : super(key: key);
  @override
  _AssassianCreedBody createState() {
    return _AssassianCreedBody();
  }
}

class _AssassianCreedBody extends State<AssassianCreedBody> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assassian Creed",
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A6GIF.gif"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A7GIF.gif"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Table(
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/A4.jpg"),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/A8.jpg"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A5.jpg"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/A3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
