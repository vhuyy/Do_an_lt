import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title});
  final String title;

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.cyan,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(50, 300, 0, 0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/dung.jpg'),
                          fit: BoxFit.cover,)),
                ),
              Column(
                children: [
                const  Padding(
                  padding: EdgeInsets.all(20),
                      child: Text("Chính xác, bạn đã trả lời đúng",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                          
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 320, 20),
                      child: Text("Đáp án đúng: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child:  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll<Color>(
                    Colors.greenAccent.shade700
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB (100 , 13, 100, 13),
                  child: Text('abc',
                    style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ),
              ),
                ],
                
              ),
          ],
        ),
          ),
        ],
      ),
    );
  }
}
