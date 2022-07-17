import 'package:baris_aslan/question.dart';

class QuestionBank {
  int _questionIndex = 0;

  List<Question> _youtubeQuestions = [
    Question(text: "YouTube, 2005 yılında kuruldu", answer: true),
    Question(text: "YouTube logosunu ana rengi mavidir", answer: false),
    Question(text: "YouTube, video paylaşım platformudur", answer: true),
    Question(text: "Google, YouTube'u 2008 yılında satın aldı", answer: false),
    Question(
        text: "YouTube'da video paylaşarak para kazanamayız", answer: false),
  ];

  String getText() {
    return _youtubeQuestions[_questionIndex].text;
  }

  bool getAnswer() {
    return _youtubeQuestions[_questionIndex].answer;
  }

  void nextQuestion() {
    if (_questionIndex + 1 < _youtubeQuestions.length) {
      _questionIndex++;
    }
  }

  bool isLastQuestion(){
    if(_questionIndex + 1 >= _youtubeQuestions.length){
      return true;
    }
    else{
      return false;
    }
  }

  void resetTest(){
    _questionIndex = 0;
  }
}
