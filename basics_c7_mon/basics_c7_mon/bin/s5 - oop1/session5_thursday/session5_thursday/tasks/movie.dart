main(){
  ///null Safety on
  Movie m1 = Movie.init('omar','DC');
  Movie m2 = Movie.init('ali','Disney');
  List<Movie> movies = [m1,m2];
  List<Movie> movie1 = Movie.getPG(movies);
  Movie.viewmovie1(movie1);
  print('=================================================');
  Movie movie2 = Movie('Casino Royal','Eon Productions','PG13');
  Movie.viewmovie2(movie2);
}

class Movie{
  String? title;
  String? studio;
  String? rating;
  Movie(this.title,this.studio, this.rating);
  Movie.init(this.title,this.studio)
  {
    rating = 'PG';
  }


  static List<Movie> getPG(List<Movie> movie)
  {
    for(int i =0; i<movie.length;i++)
    {
      movie[i].rating = 'PG 13';
    }
    return movie;
  }
  static void viewmovie2 (Movie movie)
  {
      print('Title : ${movie.title}');
      print('Studio: ${movie.studio}');
      print('Rating: ${movie.rating}');
  }
  static void viewmovie1 (List<Movie> movie1)
  {
    for(int i = 0 ; i<movie1.length;i++)
  {
    print('Title : ${movie1[i].title}');
    print('Studio: ${movie1[i].studio}');
    print('Rating: ${movie1[i].rating} \n');

  }

  }

  }
