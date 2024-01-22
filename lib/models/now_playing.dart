class NowPlaying {
  final String film;
  final String title;
  final String description;
  final String rate;

  NowPlaying({required this.film, required this.title, required this.description, required this.rate});  
}

List <NowPlaying> nowPlaying = [
  NowPlaying(film: 'assets/images/now1.png', title: 'Shang-chi', description: '2h29m Action, Adventure, sci-fi', rate: '4,8 (1,222)'),
  NowPlaying(film: 'assets/images/now2.png', title: 'Shang-chi', description: '2h29m Action, Adventure, sci-fi', rate: '4,8 (1,222)'),
  NowPlaying(film: 'assets/images/now3.png', title: 'Shang-chi', description: '2h29m Action, Adventure, sci-fi', rate: '4,8 (1,222)'),
  NowPlaying(film: 'assets/images/now4.png', title: 'Shang-chi', description: '2h29m Action, Adventure, sci-fi', rate: '4,8 (1,222)')
];