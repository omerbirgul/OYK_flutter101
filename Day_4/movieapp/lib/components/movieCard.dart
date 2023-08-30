import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';

class MovieCard extends StatefulWidget {
  MovieCard({super.key, required this.selectedMovie});

  Movie selectedMovie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  String snackBarText = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.selectedMovie.imagePath,
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.15),
          Text(widget.selectedMovie.description),
          IconButton(
            onPressed: () {
              setState(() {
                widget.selectedMovie.isFavorite =
                    !widget.selectedMovie.isFavorite;
              });

              if (widget.selectedMovie.isFavorite) {
                snackBarText = "Movie added to favorites";
              } else {
                snackBarText = "Movie removed from favorites";
              }

              final snackBar = SnackBar(
                content: Text(snackBarText),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(Icons.favorite),
            color: widget.selectedMovie.isFavorite ? Colors.red : Colors.blue,
          ),
        ],
      ),
    );
  }
}
