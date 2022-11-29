class ExploreSight {
  String imageUrl;
  String name;
  String location;
  int price;

  ExploreSight(
      {required this.imageUrl,
      required this.name,
      required this.location,
      required this.price});

  static List<ExploreSight> deserts = [
    ExploreSight(
        imageUrl:
            'assets/search_page/Parque Nacional dos Lencois Maranhenses.jpg',
        name: "Parque Nacional dos",
        location: "Brazil",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/sahara.jpg',
        name: "The Sahara dessert",
        location: "Morocco",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/attacama.jpg',
        name: "The Attacama Dessert",
        location: "Chile",
        price: 120),
  ];
  static List<ExploreSight> historicalSites = [
    ExploreSight(
        imageUrl: 'assets/search_page/taj-mahal.jpg',
        name: "The Taj Mahal",
        location: "India",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/Abu-Simbel.jpg',
        name: "Abu Simbel",
        location: "Egypt",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/acropolis.jpg',
        name: "Acropolis",
        location: "Athens",
        price: 120),
  ];
  static List<ExploreSight> mountains = [
    ExploreSight(
        imageUrl: 'assets/search_page/cuernos del paine.jpg',
        name: "cuernos del paine",
        location: "Chile",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/ama dablam.jpg',
        name: "ama dablam ",
        location: "Nepal",
        price: 120),
    ExploreSight(
        imageUrl: 'assets/search_page/HUAYNA PICCHU.jpg',
        name: "HUAYNA PICCHU",
        location: "Peru",
        price: 120),
  ];
}
