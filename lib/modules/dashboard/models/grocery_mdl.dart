import 'dart:convert';

class GroceryModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  GroceryModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory GroceryModel.fromMap(Map<String, dynamic> map) {
    return GroceryModel(
      userId: map['userId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GroceryModel.fromJson(String source) => GroceryModel.fromMap(json.decode(source));
}
