class NowPlayingGrid {
  final String film;
  final String title;
  final String genre;
  final String rate;
  final String duration;

  NowPlayingGrid({required this.film, required this.title, required this.genre, required this.rate, required this.duration});  
}

List <NowPlayingGrid> nowPlayingGrid = [
  NowPlayingGrid(film: 'assets/images/now1.png', title: 'Shang-chi', genre: 'Action, Adventure, sci-fi', rate: '4,8 (1,222)', duration:'2 hours 29 minutes' ),
  NowPlayingGrid(film: 'assets/images/now2.png', title: 'Batman v Superman', genre: 'Action, Adventure', rate: '5,4 (1,123)', duration:'2 hours 49m minutes',),
  NowPlayingGrid(film: 'assets/images/now3.png', title: 'Avenger : Infinity War', genre: 'Action, Adventure, sci-fi', rate: '7,5 (1,369)', duration:'1 hours 29 minues',),
  NowPlayingGrid(film: 'assets/images/now4.png', title: 'Guardian Of The Galaxy', genre: 'Action, Adventure, sci-fi', rate: '4,8 (1,574)', duration:'2 hours 29 minutes')
];