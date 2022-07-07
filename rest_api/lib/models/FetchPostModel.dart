import 'dart:convert';

List<FetchPostModel> fetchPostModelFromJson(String str) => List<FetchPostModel>.from(json.decode(str).map((x) => FetchPostModel.fromJson(x)));

String fetchPostModelToJson(List<FetchPostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FetchPostModel {
  FetchPostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory FetchPostModel.fromJson(Map<String, dynamic> json) => FetchPostModel(
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
