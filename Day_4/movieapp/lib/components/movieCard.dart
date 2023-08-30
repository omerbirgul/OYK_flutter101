import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';

class MovieCard extends StatefulWidget {
  MovieCard({super.key, required this.selectedMovie});

  Movie selectedMovie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.selectedMovie.imagePath,
              width: MediaQuery.of(context).size.width * 0.4
              ),
          Text(widget.selectedMovie.description),
          IconButton(
            onPressed: () {
              setState(() {
              widget.selectedMovie.isFavorite =
                  !widget.selectedMovie.isFavorite;
              });
            },
            icon: Icon(Icons.favorite),
            color: widget.selectedMovie.isFavorite
                ? Colors.red
                : Colors.blue,
          ),
        ],
      ),
    );
  }
}
