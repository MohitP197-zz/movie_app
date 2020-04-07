class DonorCategory {
  final int id;
  final String category_name;
  final String slug;

  DonorCategory(
    this.id,
    this.category_name,
    this.slug,
  );

  DonorCategory.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        category_name = json["category_name"],
        slug = json["slug"];
}
