import 'package:flutter/material.dart';
import 'package:movieapp/components/movieCard.dart';
import 'package:movieapp/model/movie.dart';

class MovieScreen extends StatelessWidget{
   MovieScreen({super.key});


  late List <Movie> movieList = [
    Movie(
      description: "Great Movie",
      imagePath: "assets/Friends.jpg",
      isFavorite: false,
    ),

     Movie(
      description: "Amazing Movie",
      imagePath: "assets/Friends2.png",
      isFavorite: false,
    ),

     Movie(
      description: "Awasome Movie",
      imagePath: "assets/Friends.jpg",
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("MovieBox"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) => MovieCard(selectedMovie: movieList[index],
        ),
      )
    );
  }
}