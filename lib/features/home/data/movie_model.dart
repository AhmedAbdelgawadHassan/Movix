// ignore_for_file: non_constant_identifier_names

class MovieModel //movie model using for Movies and Animes (Coming from API)
{
  final String movieName;
  final String imageUrl;
  final double rating;
  final String description;
  final int yearofRelease;
  final int usersRated;
  final String companyProduced;
  final Map<String, String> actors_characters;

  MovieModel({
    required this.movieName,
    required this.imageUrl,
    required this.rating,
    required this.description,
    required this.yearofRelease,
    required this.usersRated,
    required this.actors_characters,
    required this.companyProduced,
  }); //actor name and character name
}
