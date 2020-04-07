class Donor {
  final int id;
  final String name;
  final String email;
  final String address;
  final String images;
  final String club;

  Donor(
    this.id,
    this.name,
    this.email,
    this.address,
    this.images,
    this.club,
  );

  Donor.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        email = json["email"],
        address = json["address"],
        images = json["images"],
        club = json["club"];
}
