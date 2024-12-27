import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class QuestionsModel {
  @JsonKey(name: "questions")
  final List<Question>? questions;

  QuestionsModel({
    this.questions,
  });

  factory QuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$BurgerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BurgerModelToJson(this);
}

@JsonSerializable()
class Question {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "context")
  final String? context;
  @JsonKey(name: "answer1")
  final Answer? answer1;
  @JsonKey(name: "answer2")
  final Answer? answer2;
  @JsonKey(name: "answer3")
  final Answer? answer3;
  @JsonKey(name: "answer4")
  final Answer? answer4;

  Question({
    this.id,
    this.context,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable()
class Answer {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "isTrue")
  final bool? isTrue;

  Answer({
    this.id,
    this.text,
    this.isTrue,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
