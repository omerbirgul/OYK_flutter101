class Movie{
  final String description;
  final String imagePath;
  bool isFavorite;

  Movie({
    required this.description,
    required this.imagePath,
    this.isFavorite = false,
  });
}