import 'dart:convert';

GetAllQuestionApiModel getAllQuestionApiModelFromJson(String str) =>
    GetAllQuestionApiModel.fromJson(json.decode(str));

String getAllQuestionApiModelToJson(GetAllQuestionApiModel data) =>
    json.encode(data.toJson());

class GetAllQuestionApiModel {
  GetAllQuestionApiModel({
    this.status,
    this.msg,
    this.questions,
  });

  final int? status;
  final String? msg;
  final List<Question>? questions;

  factory GetAllQuestionApiModel.fromJson(Map<String, dynamic> json) =>
      GetAllQuestionApiModel(
        status: json["status"],
        msg: json["msg"],
        questions: List<Question>.from(
            json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "questions": (questions != null)
            ? List<dynamic>.from(questions!.map((x) => x.toJson()))
            : [],
      };
}

class Question {
  Question({
    this.questionId,
    this.questionText,
    this.option,
  });

  final int? questionId;
  final String? questionText;
  final List<Option>? option;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        questionId: json["question_id"],
        questionText: json["question_text"],
        option:
            List<Option>.from(json["option"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "question_id": questionId,
        "question_text": questionText,
        "option": (option != null)
            ? List<dynamic>.from(option!.map((x) => x.toJson()))
            : [],
      };
}

class Option {
  Option({
    this.optionid,
    this.optiontext,
  });

  final int? optionid;
  final String? optiontext;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        optionid: json["optionid"],
        optiontext: json["optiontext"],
      );

  Map<String, dynamic> toJson() => {
        "optionid": optionid,
        "optiontext": optiontext,
      };
}
