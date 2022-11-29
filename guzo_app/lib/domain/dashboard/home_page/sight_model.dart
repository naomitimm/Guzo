class Sight {
  String imageUrl;
  String name;
  String location;
  int price;

  Sight(
      {required this.imageUrl,
      required this.name,
      required this.location,
      required this.price});

  static List<Sight> sights = [
    Sight(
        imageUrl: 'assets/home_page/ethiopia.jpg',
        name: "Gondar Castel",
        location: "Ethiopia",
        price: 103),
    Sight(
        imageUrl: 'assets/home_page/bali.jpg',
        name: "The Besakih Temple",
        location: "Bali",
        price: 114),
    Sight(
        imageUrl: 'assets/home_page/bahamas.jpg',
        name: "The Bimini Beach",
        location: "Bahamas",
        price: 126),
    Sight(
        imageUrl: 'assets/home_page/greece.jpg',
        name: "Mykonos Buildings",
        location: "Greece",
        price: 109),
    Sight(
        imageUrl: 'assets/home_page/paris.jpg',
        name: "The Eiffel Tower",
        location: "Paris",
        price: 164),
    Sight(
        imageUrl: 'assets/home_page/rome.jpg',
        name: "The Colosseum Arena",
        location: "Rome",
        price: 152),
    Sight(
        imageUrl: 'assets/home_page/tokyo.jpg',
        name: "Takoyaki Street Food Sector",
        location: "Tokyo",
        price: 129),
  ];
  static List<Sight> deserts = [
    Sight(
        imageUrl:
            'assets/search_page/Parque Nacional dos Lencois Maranhenses.jpg',
        name: "Parque Nacional dos",
        location: "Brazil",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/sahara.jpg',
        name: "The Sahara dessert",
        location: "Morocco",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/attacama.jpg',
        name: "The Attacama Dessert",
        location: "Chile",
        price: 120),
  ];
  static List<Sight> historicalSites = [
    Sight(
        imageUrl: 'assets/search_page/taj-mahal.jpg',
        name: "The Taj Mahal",
        location: "India",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/Abu-Simbel.jpg',
        name: "Abu Simbel",
        location: "Egypt",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/acropolis.jpg',
        name: "Acropolis",
        location: "Athens",
        price: 120),
  ];
  static List<Sight> mountains = [
    Sight(
        imageUrl: 'assets/search_page/cuernos del paine.jpg',
        name: "cuernos del paine",
        location: "Chile",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/ama dablam.jpg',
        name: "ama dablam ",
        location: "Nepal",
        price: 120),
    Sight(
        imageUrl: 'assets/search_page/HUAYNA PICCHU.jpg',
        name: "HUAYNA PICCHU",
        location: "Peru",
        price: 120),
  ];
}
