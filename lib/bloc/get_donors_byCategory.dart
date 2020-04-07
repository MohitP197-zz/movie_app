import 'package:movie_app/model/donor_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class DonorsByCategoryBloc {
  final Repository _repository = Repository();

  final BehaviorSubject<DonorResponse> _subject =
      BehaviorSubject<DonorResponse>();

  getDonors(String slug) async {
    DonorResponse response = await _repository.getDonors(slug);

    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<DonorResponse> get subject => _subject;
}

final donorsByCategoryBloc = DonorsByCategoryBloc();
