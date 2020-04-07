import 'package:movie_app/model/donor.dart';

class DonorResponse {
  final List<Donor> donor;
  final String error;

  DonorResponse(this.donor, this.error);

  DonorResponse.fromJson(Map<String, dynamic> json)
      : donor = (json["results"] as List)
            .map((i) => new Donor.fromJson(i))
            .toList(),
        error = '';

  DonorResponse.withError(String errorValue)
      : donor = List(),
        error = errorValue;
}
