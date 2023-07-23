// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdviceModel {

  final int? id;
  final String? advice;
  AdviceModel({
    this.id,
    this.advice,
  });


  AdviceModel copyWith({
    int? id,
    String? advice,
  }) {
    return AdviceModel(
      id: id ?? this.id,
      advice: advice ?? this.advice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'advice': advice,
    };
  }

  factory AdviceModel.fromMap(Map<String, dynamic> map) {
    return AdviceModel(
      id: map['slip']['id'] != null ? map['slip']['id'] as int : null,
      advice: map['slip']['advice'] != null ? map['slip']['advice'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdviceModel.fromJson(String source) => AdviceModel.fromMap(json.decode(source) as Map<String, dynamic>);

}
