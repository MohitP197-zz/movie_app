import 'package:movie_app/model/club_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class ClubsListBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<ClubResponse> _subject =
      BehaviorSubject<ClubResponse>();

  getClubs() async {
    ClubResponse response = await _repository.getClubs();

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ClubResponse> get subject => _subject;
}

final clubsBloc = ClubsListBloc();
