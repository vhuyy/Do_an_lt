// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
        backgroundColor: Colors.cyan.shade800,
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('image/2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 80),
                    child: Image(
                      image: AssetImage('image/3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: Image(
                      image: AssetImage('image/4.png'),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Container(
                child: Image(
                  image: AssetImage('image/5.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 70)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('image/6.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image(
                      image: AssetImage('image/7.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('image/8.png'),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
