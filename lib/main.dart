// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: Text("تطابق صور",  style: TextStyle(fontSize: 30, color: Colors.white),),
      backgroundColor: Colors.indigo[800],
    ),
    body: MyWidget(),
  )));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int left = 1;
  int raht = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          
          left==raht?"لقد فزت":" حاول مرة اخرى",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    left = Random().nextInt(8) + 1;
                   raht = Random().nextInt(8) + 1;
                  });
                },
                child: Image.asset("assest/image-$left.png"),
              )),
            
            SizedBox(width: 10,),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    raht = Random().nextInt(8) + 1;
                  left = Random().nextInt(8) + 1;
                  });
                },
                child: Image.asset("assest/image-$raht.png"),
              ))
            ],
          ),
        )
      ],
    );
  }
}
