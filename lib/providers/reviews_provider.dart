import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/review.dart';

part 'reviews_provider.g.dart';

@riverpod
class Reviews extends _$Reviews {
  @override
  List<Review> build() {
    return [];
  }

  void addReview(Review review) {
    state = [review, ...state];
  }

  void removeReview(String movieTitle) {
    state = state.where((review) => review.movieTitle != movieTitle).toList();
  }
}
