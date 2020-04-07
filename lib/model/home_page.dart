class HomePage {
  final int id;
  final String name;
  final String biodata;
  final String images;

  HomePage(
    this.id,
    this.name,
    this.biodata,
    this.images,
  );

  HomePage.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        biodata = json["biodata"],
        images = json["images"];
}
