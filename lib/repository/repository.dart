import 'package:dio/dio.dart';
import 'package:movie_app/model/club_response.dart';
import 'package:movie_app/model/donor_category_response.dart';
import 'package:movie_app/model/donor_response.dart';
import 'package:movie_app/model/home_page_response.dart';
import 'package:movie_app/model/news_response.dart';
import 'package:movie_app/model/our_team_response.dart';

class Repository {
  static String mainUrl = "http://325b1.lionsclubs.org.np/api/";
  final Dio _dio = Dio();

  var getNewsUrl = '$mainUrl/news-notices';
  var getClubsUrl = '$mainUrl/clubs';
  var getDonorsCategoryUrl = '$mainUrl/donors-category';
  var getDonorUrl = '$mainUrl/donors-category/';
  var getDistrictGovernorUrl = '$mainUrl/main';
  var getOurTeamUrl = '$mainUrl/our-team';

  Future<NewsResponse> getNews() async {
    try {
      Response response = await _dio.get(getNewsUrl);

      return NewsResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return NewsResponse.withError("$error");
    }
  }

  Future<ClubResponse> getClubs() async {
    try {
      Response response = await _dio.get(getClubsUrl);

      return ClubResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return ClubResponse.withError("$error");
    }
  }

  Future<OurTeamResponse> getOurTeam() async {
    try {
      Response response = await _dio.get(getOurTeamUrl);

      return OurTeamResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return OurTeamResponse.withError("$error");
    }
  }

  Future<DonorCategoryResponse> getDonorsCategory() async {
    try {
      Response response = await _dio.get(getDonorsCategoryUrl);

      return DonorCategoryResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return DonorCategoryResponse.withError("$error");
    }
  }

  Future<DonorResponse> getDonors(String slug) async {
    var params = {
      "slug": slug,
    };
    try {
      Response response = await _dio.get(getDonorUrl, queryParameters: params);

      return DonorResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return DonorResponse.withError("$error");
    }
  }

  Future<HomePageResponse> getDistrictGovernor() async {
    try {
      Response response = await _dio.get(getDistrictGovernorUrl);

      return HomePageResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      print('Exception Occured: $error stackTrace: $stackTrace');

      return HomePageResponse.withError("$error");
    }
  }
}
