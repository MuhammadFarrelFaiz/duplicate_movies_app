import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'watchlist_provider.g.dart';

@riverpod
class Watchlist extends _$Watchlist {
  @override
  List<Movie> build() {
    return [];
  }

  void addMovie(Movie movie) {
    state = [...state, movie];
  }

  void removeMovie(String title) {
    state = state.where((movie) => movie.title != title).toList();
  }

  bool isInWatchlist(String title) {
    return state.any((movie) => movie.title == title);
  }
}
