class Favorite {
  String imageUrl;
  String name;
  String location;

  Favorite(
      {required this.imageUrl, required this.name, required this.location});

  static List<Favorite> favorites = [
    Favorite(
        imageUrl: 'assets/home_page/bahamas.jpg',
        name: "Bahamas",
        location: "The Bimini Beach"),
    Favorite(
        imageUrl: 'assets/home_page/greece.jpg',
        name: "Greece",
        location: "Mykonos Buildings"),
    Favorite(
        imageUrl: 'assets/home_page/paris.jpg',
        name: "The Eiffel Tower",
        location: "Paris"),
    Favorite(
        imageUrl: 'assets/home_page/rome.jpg',
        name: "The Colosseum Arena",
        location: "Rome"),
    Favorite(
        imageUrl: 'assets/home_page/tokyo.jpg',
        name: "Takoyaki Street Food Sector",
        location: "Tokyo"),
  ];
}
