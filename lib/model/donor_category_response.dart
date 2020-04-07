import 'package:movie_app/model/donor_category.dart';

class DonorCategoryResponse {
  final List<DonorCategory> donorCategory;
  final String error;

  DonorCategoryResponse(this.donorCategory, this.error);

  DonorCategoryResponse.fromJson(Map<String, dynamic> json)
      : donorCategory = (json["results"] as List)
            .map((i) => new DonorCategory.fromJson(i))
            .toList(),
        error = '';

  DonorCategoryResponse.withError(String errorValue)
      : donorCategory = List(),
        error = errorValue;
}
