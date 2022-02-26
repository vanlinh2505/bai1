import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SimpleWidget());
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nguyễn Văn Linh-18110311'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          mylabel(),
          myimage(),
          textarea(),
          singlebtn(),
          mybuttons(context)
        ],
      ),
    );
  }

  Widget textarea() {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget mybuttons(context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      IconButton(
          onPressed: () => {showAlertDialog(context)},
          icon: const Icon(Icons.home, color: Colors.red, size: 100)),
      IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.access_time, color: Colors.blue, size: 100)),
      IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.menu, color: Colors.green, size: 100)),
    ]);
  }

  Widget singlebtn() {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () => {},
          child: const Text('ElevatedButton btn'),
          style: const ButtonStyle(
              // backgroundColor: MaterialStateProperty.all(Colors.yellow)
              ),
        ));
  }

  Widget mylabel() {
    return const Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        'Nguyễn Văn Linh - 18110311',
        style: TextStyle(
            color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget myimage() {
    return Image.asset(
      'images/mountain.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
