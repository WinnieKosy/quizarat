// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

List<Question> questionFromJson(String str) => List<Question>.from(json.decode(str).map((x) => Question.fromJson(x)));

String questionToJson(List<Question> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Question {
  String category;
  String id;
  String correctAnswer;
  List<String> incorrectAnswers;
  String question;
  List<String> tags;
  Type type;
  Difficulty difficulty;
  List<dynamic> regions;
  bool isNiche;

  Question({
    required this.category,
    required this.id,
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.question,
    required this.tags,
    required this.type,
    required this.difficulty,
    required this.regions,
    required this.isNiche,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    category: json["category"],
    id: json["id"],
    correctAnswer: json["correctAnswer"],
    incorrectAnswers: List<String>.from(json["incorrectAnswers"].map((x) => x)),
    question: json["question"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    type: typeValues.map[json["type"]]!,
    difficulty: difficultyValues.map[json["difficulty"]]!,
    regions: List<String>.from(json["regions"].map((x) => x)),
    isNiche: json["isNiche"],
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "id": id,
    "correctAnswer": correctAnswer,
    "incorrectAnswers": List<dynamic>.from(incorrectAnswers.map((x) => x)),
    "question": question,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "type": typeValues.reverse[type],
    "difficulty": difficultyValues.reverse[difficulty],
    "regions": List<dynamic>.from(regions.map((x) => x)),
    "isNiche": isNiche,
  };
}

enum Difficulty { MEDIUM, HARD }

final difficultyValues = EnumValues({
  "hard": Difficulty.HARD,
  "medium": Difficulty.MEDIUM
});

enum Type { MULTIPLE_CHOICE }

final typeValues = EnumValues({
  "Multiple Choice": Type.MULTIPLE_CHOICE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
