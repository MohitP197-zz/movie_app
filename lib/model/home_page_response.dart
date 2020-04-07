import 'package:movie_app/model/home_page.dart';

class HomePageResponse {
  final List<HomePage> homePage;
  final String error;

  HomePageResponse(this.homePage, this.error);

  HomePageResponse.fromJson(Map<String, dynamic> json)
      : homePage = (json["result"] as List)
            .map((i) => new HomePage.fromJson(i))
            .toList(),
        error = '';

  HomePageResponse.withError(String errorValue)
      : homePage = List(),
        error = errorValue;
}
