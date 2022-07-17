import 'package:baris_aslan/main.dart';
import 'package:baris_aslan/questionBank.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String yourResult = "";
  Color color = Colors.black;

  Widget result() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Text(
            yourResult,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  QuestionBank questionBank = QuestionBank();

  void buttonFunction(bool yourAnswer) {
    if (questionBank.isLastQuestion() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("SORULAR BİTTİ"),
            content: new Text("Ne yapmak istiyorsun?"),
            actions: <Widget>[
              FlatButton(
                child: new Text("Ana Sayfaya Dön"),
                onPressed: () {},
              ),
              FlatButton(
                child: new Text("Tekrar"),
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    questionBank.resetTest();
                    yourResult = "";
                    color = Colors.black;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        if (questionBank.getAnswer() == yourAnswer) {
          yourResult = "Doğru Cevap";
          color = Colors.green;
        } else {
          yourResult = "Yanlış Cevap";
          color = Colors.red;
        }

        questionBank.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: result(),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            buttonFunction(false);
                          },
                        ))),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.green[400],
                      child: Icon(Icons.thumb_up, size: 30.0),
                      onPressed: () {
                        buttonFunction(true);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
