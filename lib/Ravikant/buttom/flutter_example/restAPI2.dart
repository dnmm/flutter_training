// To parse this JSON data, do
//
//     final simple = simpleFromJson(jsonString);

import 'dart:convert';

List<Simple> simpleFromJson(String str) => List<Simple>.from(json.decode(str).map((x) => Simple.fromJson(x)));

String simpleToJson(List<Simple> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Simple {
    int userId;
    int id;
    String title;
    String body;

    Simple({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    factory Simple.fromJson(Map<String, dynamic> json) => Simple(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
