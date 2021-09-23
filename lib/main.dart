import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Question goes here',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((state) => Colors.green),
                foregroundColor: MaterialStateProperty.resolveWith((state) => Colors.white)
              ),
              child: Text('True'),
              onPressed: (){
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.check,color: Colors.green,)
                  );
                });
              },
            ),
          ),
        ),
        Expanded(

          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((state) => Colors.red),
                foregroundColor: MaterialStateProperty.resolveWith((state) => Colors.white)
              ),
              child: Text('False'),
              onPressed: (){
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.close,color: Colors.red ,)
                  );
                });
              },
            ),
          ),
        ),
        Row(
          children:scoreKeeper
        )
      ],
    );
  }
}
