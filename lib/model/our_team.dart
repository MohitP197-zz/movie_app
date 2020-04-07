class OurTeam {
  final int id;
  final String name;
  final String districtprotocol_name;
  final String email;
  final String address;
  final String cell_phone;

  OurTeam(
    this.id,
    this.name,
    this.districtprotocol_name,
    this.email,
    this.address,
    this.cell_phone,
  );

  OurTeam.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        districtprotocol_name = json["districtprotocol_name"],
        email = json["email"],
        address = json["address"],
        cell_phone = json["cell_phone"];
}
