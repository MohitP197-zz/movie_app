class News {
  final int id;
  final String title;
  final String description;
  final String image;
  final String held_on;

  News(
    this.id,
    this.title,
    this.description,
    this.image,
    this.held_on,
  );

  News.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        description = json["description"],
        image = json["image"],
        held_on = json["held_on"];
}
