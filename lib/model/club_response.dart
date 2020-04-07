import 'package:movie_app/model/clubs.dart';

class ClubResponse {
  final List<Clubs> clubs;
  final String error;

  ClubResponse(this.clubs, this.error);

  ClubResponse.fromJson(Map<String, dynamic> json)
      : clubs = (json["results"] as List)
            .map((i) => new Clubs.fromJson(i))
            .toList(),
        error = '';

  ClubResponse.withError(String errorValue)
      : clubs = List(),
        error = errorValue;
}
