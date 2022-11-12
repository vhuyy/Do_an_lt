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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
      children: [Container(
        padding:  EdgeInsets.all(15),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/nen.jpg'),
        fit: BoxFit.cover)),
      ),
      Container(
        margin: EdgeInsets.all(15),
        padding:  EdgeInsets.all(15),
        height:MediaQuery.of(context).size.height/3,
        decoration: const BoxDecoration(
          border: Border(
          top: BorderSide(color:Colors.yellow),
          left: BorderSide(color:Colors.yellow),
          right: BorderSide(color:Colors.yellow),
          bottom: BorderSide(color:Colors.yellow),
        )),
        child: Column(children: [
          Text('Đăng nhập',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            ),
          ),
          Padding(padding: EdgeInsets.all(6),
          child: TextField(
            style: TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.yellow
                ),     
              ),
            border:OutlineInputBorder(),
            labelText: 'Nhập username',
            labelStyle: TextStyle(color: Colors.yellow)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: TextField(
              style: TextStyle(color: Colors.yellow),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.yellow
                ),     
              ),
              border:OutlineInputBorder(),
              labelText: 'Nhập password',
              labelStyle: TextStyle(color: Colors.yellow)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child:  ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll<Color>(
                  Colors.amberAccent.withOpacity(1.0)
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Đăng nhập'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ) 
    );
  }
}
