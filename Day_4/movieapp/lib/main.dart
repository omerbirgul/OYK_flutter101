import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/view/movieScreen.dart';

void main(){
  runApp(MovieBoxApp());

}


class MovieBoxApp extends StatelessWidget{
  const MovieBoxApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MovieScreen(),
    );
  }
}