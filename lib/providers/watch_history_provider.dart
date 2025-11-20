import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'watch_history_provider.g.dart';

@riverpod
class WatchHistory extends _$WatchHistory {
  @override
  List<Movie> build() {
    return [];
  }

  void addMovie(Movie movie) {
    state = state.where((m) => m.title != movie.title).toList();

    state = [movie, ...state];
  }

  void clearHistory() {
    state = [];
  }
}
