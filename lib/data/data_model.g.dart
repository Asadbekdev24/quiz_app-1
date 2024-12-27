// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsModel _$BurgerModelFromJson(Map<String, dynamic> json) =>
    QuestionsModel(
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BurgerModelToJson(QuestionsModel instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: json['id'] as String?,
      context: json['context'] as String?,
      answer1: json['answer1'] == null
          ? null
          : Answer.fromJson(json['answer1'] as Map<String, dynamic>),
      answer2: json['answer2'] == null
          ? null
          : Answer.fromJson(json['answer2'] as Map<String, dynamic>),
      answer3: json['answer3'] == null
          ? null
          : Answer.fromJson(json['answer3'] as Map<String, dynamic>),
      answer4: json['answer4'] == null
          ? null
          : Answer.fromJson(json['answer4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'context': instance.context,
      'answer1': instance.answer1,
      'answer2': instance.answer2,
      'answer3': instance.answer3,
      'answer4': instance.answer4,
    };

Answer _$AnswerFromJson(Map<String, dynamic> json) => Answer(
      id: json['id'] as String?,
      text: json['text'] as String?,
      isTrue: json['isTrue'] as bool?,
    );

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'isTrue': instance.isTrue,
    };
