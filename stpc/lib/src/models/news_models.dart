// To parse this JSON data, do
//
//     final newsResponse = newsResponseFromJson(jsonString);

import 'dart:convert';

List<NewsResponse> newsResponseFromJson(String str) => List<NewsResponse>.from(
    json.decode(str).map((x) => NewsResponse.fromJson(x)));

String newsResponseToJson(List<NewsResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsResponse {
  NewsResponse({
    required this.id,
    required this.name,
    required this.age,
    required this.weigth,
    required this.history,
    required this.createdAt,
    required this.updatedAt,
    this.newsResponseImg,
    required this.movies,
    this.img,
  });

  int id;
  String name;
  int age;
  double weigth;
  String history;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic newsResponseImg;
  List<Movie> movies;
  dynamic img;

  factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        weigth: json["weigth"]?.toDouble(),
        history: json["history"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        newsResponseImg: json["img"],
        movies: List<Movie>.from(json["movies"].map((x) => Movie.fromJson(x))),
        img: json["Img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "weigth": weigth,
        "history": history,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "img": newsResponseImg,
        "movies": List<dynamic>.from(movies.map((x) => x.toJson())),
        "Img": img,
      };
}

class Movie {
  Movie({
    required this.id,
    required this.img,
    required this.title,
    required this.creationData,
    required this.calification,
    required this.createdAt,
    required this.updatedAt,
    required this.movieGenre,
    required this.movieType,
    required this.genre,
    required this.type,
  });

  int id;
  String img;
  String title;
  String creationData;
  int calification;
  DateTime createdAt;
  DateTime updatedAt;
  int movieGenre;
  int movieType;
  Genre genre;
  Type type;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        img: json["img"],
        title: json["title"],
        creationData: json["creationData"],
        calification: json["calification"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        movieGenre: json["genre"],
        movieType: json["type"],
        genre: Genre.fromJson(json["Genre"]),
        type: Type.fromJson(json["Type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "img": img,
        "title": title,
        "creationData": creationData,
        "calification": calification,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "genre": movieGenre,
        "type": movieType,
        "Genre": genre.toJson(),
        "Type": type.toJson(),
      };
}

class Genre {
  Genre({
    required this.id,
    required this.name,
    required this.img,
  });

  int id;
  String name;
  String img;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"],
        name: json["name"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
      };
}

class Type {
  Type({
    required this.id,
    required this.description,
  });

  int id;
  Description description;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        description: descriptionValues.map[json["description"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": descriptionValues.reverse[description],
      };
}

enum Description { PELICULA, SERIE }

final descriptionValues =
    EnumValues({"pelicula": Description.PELICULA, "serie": Description.SERIE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
