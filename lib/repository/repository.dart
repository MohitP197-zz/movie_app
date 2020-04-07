import 'package:dio/dio.dart';
import 'package:movie_app/model/club_response.dart';
import 'package:movie_app/model/donor_category_response.dart';
import 'package:movie_app/model/home_page_response.dart';
import 'package:movie_app/model/news_response.dart';

class Repository {
  static String mainUrl = "http://325b1.lionsclubs.org.np/api/";
  final Dio _dio = Dio();

  var newsUrl = '$mainUrl/news-notices';
  var clubsUrl = '$mainUrl/clubs';
  var donorsCategoryUrl = '$mainUrl/donors-category';
  var districtGovernorUrl = '$mainUrl/main';

  Future<NewsResponse> getNews() async {
    try {
      Response response = await _dio.get(newsUrl);

      return NewsResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return NewsResponse.withError("$error");
    }
  }

  Future<ClubResponse> getClubs() async {
    try {
      Response response = await _dio.get(clubsUrl);

      return ClubResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return ClubResponse.withError("$error");
    }
  }

  Future<DonorCategoryResponse> getDonorsCategory() async {
    try {
      Response response = await _dio.get(donorsCategoryUrl);

      return DonorCategoryResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return DonorCategoryResponse.withError("$error");
    }
  }

  Future<HomePageResponse> getDistrictGovernor() async {
    try {
      Response response = await _dio.get(districtGovernorUrl);

      return HomePageResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return HomePageResponse.withError("$error");
    }
  }
}
