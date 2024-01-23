class NowPlaying {
  final String film;
  final String title;
  final String description;
  final String rate;

  NowPlaying({required this.film, required this.title, required this.description, required this.rate});  
}

List <NowPlaying> nowPlaying = [
  NowPlaying(film: 'assets/images/now1.png', title: 'Shang-chi', description: '2h29m Action, Adventure, sci-fi', rate: '4,8 (1,222)'),
  NowPlaying(film: 'assets/images/now2.png', title: 'Batman v Superman', description: '2h10m Action, Adventure', rate: '5,4 (1,123)'),
  NowPlaying(film: 'assets/images/now3.png', title: 'Avenger : Infinity War', description: '2h49m Action, Adventure, sci-fi', rate: '7,5 (1,369)'),
  NowPlaying(film: 'assets/images/now4.png', title: 'Guardian Of The Galaxy', description: '1h58m Action, Adventure, sci-fi', rate: '4,8 (1,574)')
];