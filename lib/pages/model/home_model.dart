// To parse this JSON data, do
//
//     final movieItem = movieItemFromJson(jsonString);

import 'dart:convert';

MovieItem movieItemFromJson(String str) => MovieItem.fromJson(json.decode(str));

String movieItemToJson(MovieItem data) => json.encode(data.toJson());

class MovieItem {
  MovieItem({
    this.rating,
    this.genres,
    this.title,
    this.casts,
    this.durations,
    this.collectCount,
    this.mainlandPubdate,
    this.hasVideo,
    this.originalTitle,
    this.subtype,
    this.directors,
    this.pubdates,
    this.year,
    this.images,
    this.alt,
    this.id,
  });

  Rating rating;
  List<String> genres;
  String title;
  List<Cast> casts;
  List<String> durations;
  int collectCount;
  String mainlandPubdate;
  bool hasVideo;
  String originalTitle;
  String subtype;
  List<Cast> directors;
  List<String> pubdates;
  String year;
  Images images;
  String alt;
  String id;

  factory MovieItem.fromJson(Map<String, dynamic> json) => MovieItem(
    rating: Rating.fromJson(json["rating"]),
    genres: List<String>.from(json["genres"].map((x) => x)),
    title: json["title"],
    casts: List<Cast>.from(json["casts"].map((x) => Cast.fromJson(x))),
    durations: List<String>.from(json["durations"].map((x) => x)),
    collectCount: json["collect_count"],
    mainlandPubdate: json["mainland_pubdate"],
    hasVideo: json["has_video"],
    originalTitle: json["original_title"],
    subtype: json["subtype"],
    directors: List<Cast>.from(json["directors"].map((x) => Cast.fromJson(x))),
    pubdates: List<String>.from(json["pubdates"].map((x) => x)),
    year: json["year"],
    images: Images.fromJson(json["images"]),
    alt: json["alt"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "rating": rating.toJson(),
    "genres": List<dynamic>.from(genres.map((x) => x)),
    "title": title,
    "casts": List<dynamic>.from(casts.map((x) => x.toJson())),
    "durations": List<dynamic>.from(durations.map((x) => x)),
    "collect_count": collectCount,
    "mainland_pubdate": mainlandPubdate,
    "has_video": hasVideo,
    "original_title": originalTitle,
    "subtype": subtype,
    "directors": List<dynamic>.from(directors.map((x) => x.toJson())),
    "pubdates": List<dynamic>.from(pubdates.map((x) => x)),
    "year": year,
    "images": images.toJson(),
    "alt": alt,
    "id": id,
  };
}

class Cast {
  Cast({
    this.avatars,
    this.nameEn,
    this.name,
    this.alt,
    this.id,
  });

  Images avatars;
  String nameEn;
  String name;
  String alt;
  String id;

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
    avatars: Images.fromJson(json["avatars"]),
    nameEn: json["name_en"],
    name: json["name"],
    alt: json["alt"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "avatars": avatars.toJson(),
    "name_en": nameEn,
    "name": name,
    "alt": alt,
    "id": id,
  };
}

class Images {
  Images({
    this.small,
    this.large,
    this.medium,
  });

  String small;
  String large;
  String medium;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    small: json["small"],
    large: json["large"],
    medium: json["medium"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "large": large,
    "medium": medium,
  };
}

class Rating {
  Rating({
    this.max,
    this.average,
    //this.details,
    this.stars,
    this.min,
  });

  int max;
  double average;
  //Map<String, int> details;
  String stars;
  int min;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    max: json["max"],
    average: json["average"].toDouble(),
    //details: Map.from(json["details"]).map((k, v) => MapEntry<String, int>(k, v)),
    stars: json["stars"],
    min: json["min"],
  );

  Map<String, dynamic> toJson() => {
    "max": max,
    "average": average,
    //"details": Map.from(details).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "stars": stars,
    "min": min,
  };
}
