class User {
  final int id;
  final String districtprotocol_name;
  final String name;
  final String email;
  final String images;
  final String address;
  final String club_name;
  final String join_date;

  User(
    this.id,
    this.districtprotocol_name,
    this.name,
    this.email,
    this.images,
    this.address,
    this.club_name,
    this.join_date,
  );

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        districtprotocol_name = json["districtprotocol_name"],
        name = json["name"],
        email = json["email"],
        images = json["images"],
        address = json["address"],
        club_name = json["club_name"],
        join_date = json["join_date"];
}
