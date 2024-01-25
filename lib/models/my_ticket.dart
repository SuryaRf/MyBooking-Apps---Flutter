class MyTicket {
  final String img;
  final String title;
  final String date;
  final String location;

  MyTicket({required this.img, required this.title, required this.date, required this.location});
}
List <MyTicket> myTicket =[
  MyTicket(img: 'assets/images/film1.png', title: 'Avenger : Infinity War', date: '20-01-2024', location: 'CGV Malang Town Square'),
  MyTicket(img: 'assets/images/film2.png', title: 'Avatar 2 : The Way of Water', date: '10-04-2024', location: 'CGV Malang Town Square'),
  MyTicket(img: 'assets/images/film3.png', title: 'Ant Man Wasp: Quantumania', date: '12-02-2024', location: 'CGV Malang Town Square')
];