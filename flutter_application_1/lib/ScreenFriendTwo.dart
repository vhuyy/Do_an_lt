import 'package:flutter/material.dart';
import 'ScreenFriendOne.dart';

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
      home: ScreenFriendTwo(),
    );
  }
}

class ScreenFriendTwo extends StatefulWidget {
  const ScreenFriendTwo({super.key});

  @override
  State<ScreenFriendTwo> createState() => _ScreenFriendTwoState();
}

class _ScreenFriendTwoState extends State<ScreenFriendTwo> {
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
                                  borderRadius: BorderRadius.circular(35)))),
                      onPressed: () => {},
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/logo-gaming-free-fire-1.jpg'),
                        radius: 25,
                      ),
                    ),
                  ),

                  // ignore: avoid_unnecessary_containers
                  Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Image(
                        image: AssetImage('images/dollar-coin.png'),
                        width: 20,
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
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Image(
                        image: AssetImage('images/banknote.png'),
                        width: 20,
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
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
              Center(
                  child: Container(
                      height: 280,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(212, 3, 14, 112),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(212, 3, 25, 223),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Text(
                                        "FRIEND MENU",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Expanded(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.disabled_by_default_rounded,
                                              color: Colors.blue,
                                            )))
                                  ],
                                )),
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  212, 3, 14, 112),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              ),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.all(25),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ScreenFriendOne()));
                                            },
                                            child: Text(
                                              "FRIEND",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Text(""),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(212, 3, 14, 112),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                                border: Border.all(
                                                color: Colors.white,
                                                width: 5,
                                              )
                                          ),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 25, 10, 25),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ScreenFriendTwo()));
                                            },
                                            child: Text(
                                              "ADD FRIEND",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 230,
                                          height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.black,
                                        ),
                                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                            child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.green,
                                                child: Text(
                                                  'TQB',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          Text(
                                            "Tran Quoc Binh ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "LV 1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add_outlined),
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.green,
                                                child: Text(
                                                  'TQB',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          Text(
                                            "Tran Quoc Binh ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "LV 1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add_outlined),
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.green,
                                                child: Text(
                                                  'TQB',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                          Text(
                                            "Tran Quoc Binh ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "LV 1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add_outlined),
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                      ],
                                    ),
                                  ],
                                )),
                          ]))),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 70)),
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
                      onPressed: () => {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/6.png'),
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
                        backgroundImage: AssetImage('images/7.png'),
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
                        backgroundImage: AssetImage('images/8.png'),
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
