import 'package:flutter/material.dart';
import 'ScreenFriendTwo.dart';

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
      home: const ScreenFriendOne(),
    );
  }
}

class ScreenFriendOne extends StatefulWidget {
  const ScreenFriendOne({super.key});

  @override
  State<ScreenFriendOne> createState() => _ScreenFriendOneState();
}

class _ScreenFriendOneState extends State<ScreenFriendOne> {
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
                      image: AssetImage('images/2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 80),
                    child: Image(
                      image: AssetImage('images/3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: Image(
                      image: AssetImage('images/4.png'),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Center(
        child: Container(
        height: 300,
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
                  icon: Icon(Icons.disabled_by_default_rounded, color: Colors.blue,))
                  )
              ],
            )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(212, 3, 14, 112),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 5,
                            )
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenFriendOne()));
                        }, 
                        child: Text("FRIEND", style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Text(""),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(212, 3, 14, 112),
                            borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenFriendTwo()));
                        }, 
                        child: Text("ADD FRIEND", style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                    ],
                  )
                  ),
          ]
                  )
                )
            ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 70)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('images/6.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image(
                      image: AssetImage('images/7.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('images/8.png'),
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
