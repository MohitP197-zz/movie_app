import 'package:movie_app/model/donor_category_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class DonorsCategoryBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<DonorCategoryResponse> _subject =
      BehaviorSubject<DonorCategoryResponse>();

  getDonorsCategory() async {
    DonorCategoryResponse response = await _repository.getDonorsCategory();

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<DonorCategoryResponse> get subject => _subject;
}

final donorsCategoryBloc = DonorsCategoryBloc();
