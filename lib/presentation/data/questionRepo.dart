import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fluttertask/presentation/model/questions.dart';
import 'package:http/http.dart' as http;

class QuestionRepo {
  Future<Question> getQuestion() async {
    String url = 'https://the-trivia-api.com/api/questions';
    try {
      var request = http.MultipartRequest('GET', Uri.parse(url));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        String rawResponseString = await response.stream.bytesToString();
        var jsonStr = rawResponseString;
        print('rrrr $jsonStr');
        var j = json.decode(rawResponseString);
        print('wwww $j');
        var data = Question.fromJson(j[0]);
        print('aaa ${data.category}');

      }
      else{
       debugPrint(response.reasonPhrase);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception('an error');

  }
}
