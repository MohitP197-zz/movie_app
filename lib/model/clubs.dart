class Clubs {
  final int id;
  final String club_name;
  final String established_at;

  Clubs(
    this.id,
    this.club_name,
    this.established_at,
  );

  Clubs.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        club_name = json["club_name"],
        established_at = json["established_at"];
}
