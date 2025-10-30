import 'package:flutter/material.dart';
import 'components/movie_list_section.dart';
import 'components/movie_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duplicate Movies App',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Now Playing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> carouselMovies = [
    {
      'image': 'assets/images/tlw.jpg',
      'title': 'The Long Walk',
      'releaseYear': '2025',
      'genre': 'Sci-Fi',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/tin-soldier.jpg',
      'title': 'Tin Soldier',
      'releaseYear': '2025',
      'genre': 'Action',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/nobody-2.jpg',
      'title': 'Nobody 2',
      'releaseYear': '2025',
      'genre': 'Action',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel
            MovieCarousel(movies: carouselMovies),
            const SizedBox(height: 50),

            // Movie Lists
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
