class DonorCategory {
  final int id;
  final String category_name;

  DonorCategory(
    this.id,
    this.category_name,
  );

  DonorCategory.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        category_name = json["category_name"];
}
