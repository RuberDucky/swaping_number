import 'package:flutter/material.dart';

class swap extends StatefulWidget {
  const swap({Key? key}) : super(key: key);

  @override
  _swapState createState() => _swapState();
}

class _swapState extends State<swap> {
  String v1 = "Hey This is A";
  String v2 = "Hey This is B";
  String v3 = "Hey this is C";
  String v4 = "Hey this is D";
  String v5 = "Hey this is E";

  void fun() {
    setState(() {
      String s1 = "";
      s1 = v5;
      v5 = v4;
      v4 = v3;
      v3 = v2;
      v2 = v1;
      v1 = s1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Swaping App")),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(27)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(v1 ),
            Text(v2 ),
            Text(v3 ),
            Text(v4 ) ,
            Text(v5),
            //ElevatedButton(onPressed: Swap, child: Text("See Magic"),)
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton.icon(
                    onPressed: fun,
                    icon: Icon(Icons.android_rounded),
                    label: Text("Swap")))
          ],
        ),
      ),
    );
  }
}
