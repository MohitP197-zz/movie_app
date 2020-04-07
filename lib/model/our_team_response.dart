import 'package:movie_app/model/our_team.dart';

class OurTeamResponse {
  final List<OurTeam> ourTeam;
  final String error;

  OurTeamResponse(this.ourTeam, this.error);

  OurTeamResponse.fromJson(Map<String, dynamic> json)
      : ourTeam = (json["results"] as List)
            .map((i) => new OurTeam.fromJson(i))
            .toList(),
        error = '';

  OurTeamResponse.withError(String errorValue)
      : ourTeam = List(),
        error = errorValue;
}
