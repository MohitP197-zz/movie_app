import 'package:movie_app/model/home_page_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class HomePageBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<HomePageResponse> _subject =
      BehaviorSubject<HomePageResponse>();

  getDistrictGovernor() async {
    HomePageResponse response = await _repository.getDistrictGovernor();

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<HomePageResponse> get subject => _subject;
}

final homePageBloc = HomePageBloc();
