import 'package:movie_app/model/news.dart';

class NewsResponse {
  final List<News> news;
  final String error;

  NewsResponse(this.news, this.error);

  NewsResponse.fromJson(Map<String, dynamic> json)
      : news =
            (json["results"] as List).map((i) => new News.fromJson(i)).toList(),
        error = '';

  NewsResponse.withError(String errorValue)
      : news = List(),
        error = errorValue;
}
