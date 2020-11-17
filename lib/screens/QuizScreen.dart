import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> allQuestions = ["Question 1", "Question 2", "Question 3"];
  List<String> answers = [];
  List<Map<String, dynamic>> questions = [
    {
      "question": "What is the capital of Nepal",
      "answer": ["Kathmandu", "Butwal", "Biratnagar", "Hetauda"],
      "correctanswer": "Kathmandu"
    },
  ];
  String question1 = "";
  PageController _pageController = PageController(initialPage: 0);

  Widget questionScreen({int index}) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Expanded(
            child: Text(allQuestions[index]),
          ),
          Row(
            children: [
              Radio(
                value: "Kathmandu",
                groupValue: question1,
                onChanged: (String a) {
                  setState(() {
                    question1 = a;
                  });
                  answers.insert(index, a);
                },
              ),
              Text("Kathmandu")
            ],
          ),
          RaisedButton(
            onPressed: () {
              _pageController.animateToPage(index + 1,
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
            child: Text("Next"),
          )
        ],
      ),
    );
  }

  Widget resultScreen() {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text("Result"),
    );
  }

  @override
  Widget build(BuildContext context) {
    var newLength = allQuestions.length + 1;
    return Scaffold(
      body: Container(
        child: PageView.builder(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: newLength,
          itemBuilder: (BuildContext context, int a) {
            return a >= allQuestions.length
                ? resultScreen()
                : questionScreen(index: a);
          },
        ),
      ),
    );
  }
}
