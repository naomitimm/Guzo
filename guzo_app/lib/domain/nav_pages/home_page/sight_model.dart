class Sight {
  String imageUrl;
  String name;
  String location;

  Sight({required this.imageUrl, required this.name, required this.location});

  static List<Sight> sights = [
    Sight(
        imageUrl: 'assets/home_page/ethiopia.jpg',
        name: "Gondar Castel",
        location: "Ethiopia"),
    Sight(
        imageUrl: 'assets/home_page/bali.jpg',
        name: "The Besakih Temple",
        location: "Bali"),
    Sight(
        imageUrl: 'assets/home_page/bahamas.jpg',
        name: "Bahamas",
        location: "The Bimini Beach"),
    Sight(
        imageUrl: 'assets/home_page/greece.jpg',
        name: "Greece",
        location: "Mykonos Buildings"),
    Sight(
        imageUrl: 'assets/home_page/paris.jpg',
        name: "The Eiffel Tower",
        location: "Paris"),
    Sight(
        imageUrl: 'assets/home_page/rome.jpg',
        name: "The Colosseum Arena",
        location: "Rome"),
    Sight(
        imageUrl: 'assets/home_page/tokyo.jpg',
        name: "Takoyaki Street Food Sector",
        location: "Tokyo"),
  ];
}
