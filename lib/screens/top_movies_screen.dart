import 'package:flutter/material.dart';

class TopMoviesScreen extends StatelessWidget {
  const TopMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> topMovies = [
      {
        'rank': 1,
        'title': 'The Godfather',
        'image': 'assets/images/godfather-1.jpg',
        'rating': 9.2,
        'year': 1972,
        'genre': 'Crime, Drama',
      },
      {
        'rank': 2,
        'title': 'The Godfather Part II',
        'image': 'assets/images/godfather-2.jpg',
        'rating': 9.0,
        'year': 1974,
        'genre': 'Crime, Drama',
      },
      {
        'rank': 3,
        'title': 'Se7en',
        'image': 'assets/images/se7en.jpg',
        'rating': 8.6,
        'year': 1995,
        'genre': 'Crime, Mystery',
      },
      {
        'rank': 4,
        'title': 'Saving Private Ryan',
        'image': 'assets/images/spr.jpg',
        'rating': 8.6,
        'year': 1998,
        'genre': 'Drama, War',
      },
      {
        'rank': 5,
        'title': 'Coco',
        'image': 'assets/images/coco.jpg',
        'rating': 8.4,
        'year': 2017,
        'genre': 'Animation, Family',
      },
      {
        'rank': 6,
        'title': 'Mission: Impossible',
        'image': 'assets/images/mi-1.jpg',
        'rating': 8.3,
        'year': 1996,
        'genre': 'Action, Adventure',
      },
      {
        'rank': 7,
        'title': 'Star Wars: A New Hope',
        'image': 'assets/images/star-wars-1.jpg',
        'rating': 8.3,
        'year': 1977,
        'genre': 'Sci-Fi, Adventure',
      },
      {
        'rank': 8,
        'title': 'Star Wars: The Empire Strikes Back',
        'image': 'assets/images/star-wars-2.jpg',
        'rating': 8.2,
        'year': 1980,
        'genre': 'Sci-Fi, Adventure',
      },
      {
        'rank': 9,
        'title': 'Avatar',
        'image': 'assets/images/avatar.jpg',
        'rating': 8.1,
        'year': 2009,
        'genre': 'Sci-Fi, Action',
      },
      {
        'rank': 10,
        'title': 'Casino Royale',
        'image': 'assets/images/casino-royale.jpg',
        'rating': 8.0,
        'year': 2006,
        'genre': 'Action, Thriller',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Top Movies This Week',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: topMovies.length,
        itemBuilder: (context, index) {
          final movie = topMovies[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${movie['rank']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movie['image'],
                    width: 80,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie['title'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${movie['year']}',
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        movie['genre'],
                        style: TextStyle(color: Colors.grey[400], fontSize: 13),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            '${movie['rating']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
          );
        },
      ),
    );
  }
}
