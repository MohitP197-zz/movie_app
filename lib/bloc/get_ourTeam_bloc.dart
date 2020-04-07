import 'package:movie_app/model/our_team_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class OurTeamListBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<OurTeamResponse> _subject =
      BehaviorSubject<OurTeamResponse>();

  getOurTeam() async {
    OurTeamResponse response = await _repository.getOurTeam();

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<OurTeamResponse> get subject => _subject;
}

final ourTeamBloc = OurTeamListBloc();
