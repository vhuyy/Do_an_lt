import 'package:flutter/material.dart';
import 'giao_dien_che_do_choi_battle.dart';

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
      home: const ScreenPlayVS(),
    );
  }
}

class ScreenPlayVS extends StatefulWidget {
  const ScreenPlayVS({super.key});

  @override
  State<ScreenPlayVS> createState() => _ScreenPlayVSState();
}

class _ScreenPlayVSState extends State<ScreenPlayVS> {
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
        height: 300,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                    "BATTLE MENU", 
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
              padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
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
                          padding: EdgeInsets.all(25),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenPlayVS(),));
                        }, 
                        child: Text("VS", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                      ),
                      )),
                        Text(""),
                        Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(212, 3, 14, 112),
                            borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenPlayBattle(),));
                        }, 
                        child: Text("BATTLE STAGE", style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold),),
                      ),
                  )],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        child:
                              Text("Chơi đơn",style: TextStyle(color: Colors.black, fontSize: 10),),
                      ),
                      ),
                      Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/h3.jpg'),
                      fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: 100,
                    height: 100,
                    )),
                    Container(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(212, 3, 14, 112),
                      ),
                      child: TextButton(
                      onPressed: () {}, 
                      child: Text("FIGHT", style: TextStyle(color: Colors.white),)),
                      width: 100,
                      height: 50,
                    ),
                  ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        child:
                              Text("Rank",style: TextStyle(color: Colors.black),),
                      ),
                      ),
                      Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/h2.jpg'),
                      fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: 100,
                    height: 100,
                  ),),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(212, 3, 14, 112),
                      ),
                      child: TextButton(
                      onPressed: () {}, 
                      child: Text("FIGHT", style: TextStyle(color: Colors.white),)),
                      width: 100,
                      height: 50,
                    ),
                  ),
                ])
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
                      width: 100,
                      height: 100,
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image(
                      image: AssetImage('images/7.png'),
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('images/8.png'),
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
