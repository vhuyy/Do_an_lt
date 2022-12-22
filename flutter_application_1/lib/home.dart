// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan.shade800,
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      onPressed: () => {},
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('image/logo-gaming-free-fire-1.jpg'),
                        radius: 30,
                      ),
                    ),
                  ),

                  // ignore: avoid_unnecessary_containers
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Image(
                        image: AssetImage('image/dollar-coin.png'),
                        width: 30,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Text('500'),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.blueAccent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                        onPressed: () {},
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Image(
                        image: AssetImage('image/banknote.png'),
                        width: 30,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Text('500'),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.blueAccent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                        onPressed: () {},
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0)),
              Container(
                child: Image(
                  image: AssetImage('image/5.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 70)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenPlayVS(),
                            ))
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('image/6.png'),
                        radius: 50,
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      onPressed: () => {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage('image/7.png'),
                        radius: 50,
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      onPressed: () => {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage('image/8.png'),
                        radius: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
