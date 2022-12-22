import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/question_model.dart';
import '../constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _question = [
    Question(
      id: '10',
      title: 'Loài khủng long hung dữ nhất ở thời đại Khủng long là?',
      options: {
        'A. Khủng long bạo chúa': true,
        'B. Khủng long sấm': false,
        'C. Khủng long cánh': false,
        'D. Khủng long cá': false
      },
    ),
    Question(
      id: '11',
      title: 'Loài khủng long nào KHÔNG sống trên cạn?',
      options: {
        'A. Khủng long cổ dài': false,
        'B. Khủng long cá': true,
        'C. Khủng long sấm': false,
        'D. Khủng long bạo chúa': false
      },
    ),
    Question(
      id: '12',
      title:
          'Đặc điểm nào dưới đây có cả ở khủng long sấm, khủng long cổ dài và khủng long bạo chúa?',
      options: {
        'A. Ăn thực vật': false,
        'B. Đuôi ngắn': false,
        'C. Mõm ngắn': true,
        'D. Cổ dài': false
      },
    ),
    Question(
      id: '13',
      title: 'Khủng long diệt vong là do',
      options: {
        'A. Thiên thạch rơi vào trái đất, núi lửa, thiên tai triền miên': false,
        'B. Sự xuất hiện của chim và thú ăn thịt': false,
        'C. Khí hậu đột ngột thay đổi': false,
        'D. Tất cả các ý trên': true
      },
    ),
    Question(
      id: '14',
      title: 'Khủng long sống trong môi trường nào?',
      options: {
        'A. Trên không': false,
        'B. Trên cạn': false,
        'C. Dưới nước': false,
        'D. Sống ở cả 3 môi trường trên': true
      },
    ),
    Question(
      id: '15',
      title: 'Khủng long bị diệt vong cách đây khoảng',
      options: {
        'A. 90 triệu năm': false,
        'B. 150 triệu năm': false,
        'C. 1,5 triệu năm': false,
        'D. 65 triệu năm': true
      },
    ),
    Question(
      id: '16',
      title:
          'Khi nói về sự tuyệt chủng của khủng long, phát biểu nào sau đây là sai?',
      options: {
        'A. Do sự xuất hiện của chim và thú ăn thịt': true,
        'B. Khí hậu thay đổi đột ngột': false,
        'C. Thiên tai, núi lửa phun trào, khói bụi che phủ bầu trời trong nhiều năm, quang hợp của thực vật bị ảnh hưởng':
            false,
        'D. Khủng long cỡ lớn thiếu thức ăn, thiếu chỗ tránh rét nên bị diệt vong hàng loạt':
            false
      },
    ),
    Question(
      id: '17',
      title:
          'Loài khủng long nào dưới đây được cho là khủng long dài nhất từng sống trên Trái Đất là:',
      options: {
        'A. Supersaurus': true,
        'B. Diplodocus': false,
        'C. Bruhathkayosaurus': false,
        'D. Argentinosaurus': false
      },
    ),
    Question(
      id: '18',
      title: 'Loài khủng long nào dưới đây được cho là nặng nhất?',
      options: {
        'A. Argentinosaurus': true,
        'B. Seismosaurus': false,
        'C. Ultrasaurus': false,
        'D. Brachiosaurus': false
      },
    ),
    Question(
      id: '19',
      title:
          'Loài khủng long nào dưới đây là loài khủng long lớn nhất thế giới là?',
      options: {
        'A. Supersaurus': false,
        'B. Diplodocus': true,
        'C. Bruhathkayosaurus': false,
        'D. Argentinosaurus': false
      },
    ),
  ];
  int score = 0;
  int index = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;
  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void nextQuestion() {
    if (index == _question.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
                result: score,
                questionLength: _question.length,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please slect any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('image/logo-gaming-free-fire-1.jpg'),
              radius: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text('Doan Trum', style: const TextStyle(fontSize: 18.0)),
          ],
        ),
        backgroundColor: background,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Score: $score',
              style: const TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(children: [
          QuestionWidget(
              question: _question[index].title,
              indexAction: index,
              totalQuestions: _question.length),
          const Divider(
            color: neutral,
          ),
          const SizedBox(height: 25.0),
          for (int i = 0; i < _question[index].options.length; i++)
            GestureDetector(
              onTap: () => checkAnswerAndUpdate(
                  _question[index].options.values.toList()[i] == true),
              child: OptionCard(
                option: _question[index].options.keys.toList()[i],
                color: isPressed
                    ? _question[index].options.values.toList()[i] == true
                        ? correct
                        : incorrect
                    : neutral,
              ),
            ),
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
