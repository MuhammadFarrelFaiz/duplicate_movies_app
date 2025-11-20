import 'package:flutter/material.dart';
import '../widgets/movie_list_section.dart';
import '../widgets/movie_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> carouselMovies = [
      {
        'image': 'assets/images/tlw.jpg',
        'title': 'The Long Walk',
        'releaseYear': '2025',
        'genre': 'Sci-Fi',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      },
      {
        'image': 'assets/images/tin-soldier.jpg',
        'title': 'Tin Soldier',
        'releaseYear': '2025',
        'genre': 'Action',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      },
      {
        'image': 'assets/images/nobody-2.jpg',
        'title': 'Nobody 2',
        'releaseYear': '2025',
        'genre': 'Action',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      },
    ];

    final List<Map<String, String>> trendingMovies = [
      {'image': 'assets/images/mi-1.jpg'},
      {'image': 'assets/images/star-wars-1.jpg'},
      {'image': 'assets/images/star-wars-2.jpg'},
      {'image': 'assets/images/star-wars-3.jpg'},
      {'image': 'assets/images/transformers-1.jpeg'},
    ];
    final List<Map<String, String>> popularMovies = [
      {'image': 'assets/images/transformers-2.jpg'},
      {'image': 'assets/images/casino-royale.jpg'},
      {'image': 'assets/images/skyfall.jpg'},
      {'image': 'assets/images/avatar.jpg'},
      {'image': 'assets/images/fast-x.jpg'},
    ];
    final List<Map<String, String>> topRatedMovies = [
      {'image': 'assets/images/godfather-1.jpg'},
      {'image': 'assets/images/godfather-2.jpg'},
      {'image': 'assets/images/se7en.jpg'},
      {'image': 'assets/images/spr.jpg'},
      {'image': 'assets/images/coco.jpg'},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieCarousel(movies: carouselMovies),
            const SizedBox(height: 50),

            MovieListSection(title: "Trending", movies: trendingMovies),
            const SizedBox(height: 20),
            MovieListSection(title: "Popular", movies: popularMovies),
            const SizedBox(height: 20),
            MovieListSection(title: "Top Rated", movies: topRatedMovies),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
