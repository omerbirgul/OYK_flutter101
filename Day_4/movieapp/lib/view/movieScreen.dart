import 'package:flutter/material.dart';
import 'package:movieapp/components/movieCard.dart';

class MovieScreen extends StatelessWidget{
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MovieBox"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => MovieCard(),
      )
    );
  }
}