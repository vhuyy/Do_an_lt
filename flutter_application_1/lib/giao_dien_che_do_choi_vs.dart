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
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(35, 25, 35, 25),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(212, 3, 14, 112),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 5,
                            )
                      ),
                      child: Text("VS", style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                        ),
                        Text(""),
                        Container(
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(212, 3, 14, 112),
                            borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("BATTLE STAGE", style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                              Text("1 VS 1 Battle",style: TextStyle(color: Colors.black),),
                      ),
                      ),
                      Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                    padding: EdgeInsets.fromLTRB(80, 80, 80, 80),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/h3.jpg'),
                      fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),)),
                    Container(
                    padding: EdgeInsets.fromLTRB(30, 2, 10, 0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(212, 3, 14, 112),
                      ),
                      child: TextButton(
                      onPressed: () {}, 
                      child: Text("FIGHT", style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 60, 0),
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
                              Text("Rank",style: TextStyle(color: Colors.black),),
                      ),
                      ),
                      Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                    padding: EdgeInsets.fromLTRB(80, 80, 80, 80),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/h2.jpg'),
                      fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 2, 10, 0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(212, 3, 14, 112),
                      ),
                      child: TextButton(
                      onPressed: () {}, 
                      child: Text("FIGHT", style: TextStyle(color: Colors.white),)),
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
