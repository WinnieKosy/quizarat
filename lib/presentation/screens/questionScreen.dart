import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/data/questionRepo.dart';
import 'package:fluttertask/presentation/model/questions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Question? _questions;
 // List<Question> question = [];

  void getQuestionData()async{
final data = await QuestionRepo().getQuestion();
print(data.category);
setState(() {
  _questions = data;
});
print(_questions!.id);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getQuestionData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){getQuestionData();},),
      body: Column(
        children: [
          Container(
            child: Text(''),
          )
        ],
      ),
    );
  }
}
