import 'package:movie_app/model/news_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class NewsListBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<NewsResponse> _subject =
      BehaviorSubject<NewsResponse>();

  getNews() async {
    NewsResponse response = await _repository.getNews();

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<NewsResponse> get subject => _subject;
}

final newsBloc = NewsListBloc();
