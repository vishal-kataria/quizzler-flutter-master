import 'question.dart';

class Quiz_Brain {
  int _number = 0;
  List<Question> _questionBank = [
    Question('HTML is programming language.', false),
    Question('JAVA is not an object oriented language.', false),
    Question('Python is an object oriented language.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('A slug\'s blood is green.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void reset() {
    _number = 0;
  }

  bool isFinished() {
    if (_number == _questionBank.length - 1) return true;
    return false;
  }

  void nextQuestion() {
    if (_number + 1 < _questionBank.length) _number++;
    print(_number);
    print(_questionBank);
  }

  String getQuestionTest() {
    return _questionBank[_number].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_number].questionAns;
  }
}
