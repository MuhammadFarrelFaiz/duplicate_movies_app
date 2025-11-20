import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/movie.dart';

part 'favorites_provider.g.dart';

@riverpod
class Favorites extends _$Favorites {
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

  bool isFavorite(String title) {
    return state.any((movie) => movie.title == title);
  }
}
