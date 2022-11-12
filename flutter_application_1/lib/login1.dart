import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/1.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
            alignment: Alignment.center,
            child: TextField(
              style: TextStyle(color: Colors.yellow),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.cyan.shade800),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'User Name',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
            alignment: Alignment.center,
            child: TextField(
              style: TextStyle(color: Colors.yellow),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.cyan.shade800),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Password ',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Colors.cyan.shade800.withOpacity(0.8)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
              onPressed: () => {},
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text("Login"),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: Alignment.bottomRight,
              child: Text(
                "Password Retrieval ?",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    ));
  }
}
