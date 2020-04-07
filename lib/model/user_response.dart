import 'package:movie_app/model/user.dart';

class UserResponse {
  final List<User> user;
  final String error;

  UserResponse(this.user, this.error);

  UserResponse.fromJson(Map<String, dynamic> json)
      : user =
            (json["results"] as List).map((i) => new User.fromJson(i)).toList(),
        error = '';

  UserResponse.withError(String errorValue)
      : user = List(),
        error = errorValue;
}
