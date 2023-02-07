import 'package:assignment1/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Division2 extends StatefulWidget {
  const Division2({Key? key}) : super(key: key);
  @override
  _Division2 createState() {
    return _Division2();
  }
}

class _Division2 extends State<Division2> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Division2",
      home: Scaffold(
        backgroundColor: Color(0xFFEFEBE9),
        appBar: AppBar(
          backgroundColor: Color(0xFFA1887F),
          title: const Text("Division2",
          style: TextStyle(
            color: Color(0xFFFF6F00),
            fontSize: 30,
          ),
          ),
          leading: IconButton(
            tooltip: 'Back',
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xFFFF6F00),
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
                    width: selected ? 700.0 : 100.0,
                    height: selected ? 200.0 : 100.0,
                    alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: selected ? Image.asset("assets/W2.png") : Image.asset("assets/W1.png"),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Table(
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/W6.png"),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/W4.png", height: 435,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/W5.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/W7.png"),
            ],
          ),
        ),
      ),
    );
  }
}
