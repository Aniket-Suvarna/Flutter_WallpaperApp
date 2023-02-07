import 'package:assignment1/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchDogs extends StatefulWidget {
  const WatchDogs({Key? key}) : super(key: key);
  @override
  _WatchDogs createState() {
    return _WatchDogs();
  }
}

class _WatchDogs extends State<WatchDogs> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Watch Dogs",
      home: Scaffold(
        backgroundColor: Color(0xFFF3E5F5),
        appBar: AppBar(
          backgroundColor: Color(0xFFCE93D8),
          title: const Text("Watch Dogs",
            style: TextStyle(
              color: Color(0xFF4A148C),
              fontSize: 30,
            ),
          ),
          leading: IconButton(
            tooltip: 'Back',
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xFF4A148C),
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
                    width: selected ? 900.0 : 900.0,
                    height: selected ?  700.0 : 900.0,
                    alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: selected ? WatchDogsBody() : Image.asset("assets/WD1.png"),
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


class WatchDogsBody extends StatefulWidget {
  const WatchDogsBody({Key? key}) : super(key: key);
  @override
  _WatchDogsBody createState() {
    return _WatchDogsBody();
  }
}

class _WatchDogsBody extends State<WatchDogsBody> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Watch Dogs",
      home: Scaffold(
        backgroundColor: Color(0xFFF3E5F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/WD2.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/WD4.png"),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.asset("assets/WD3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
