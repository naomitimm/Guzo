class ExploreSight {
  String imageUrl;
  String name;
  String location;

  ExploreSight(
      {required this.imageUrl, required this.name, required this.location});

  static List<ExploreSight> deserts = [
    ExploreSight(
        imageUrl:
            'assets/search_page/Parque Nacional dos Lencois Maranhenses.jpg',
        name: "Parque Nacional dos",
        location: "Brazil"),
    ExploreSight(
        imageUrl: 'assets/search_page/sahara.jpg',
        name: "The Sahara dessert",
        location: "Morocco"),
    ExploreSight(
        imageUrl: 'assets/search_page/attacama.jpg',
        name: "The Attacama Dessert",
        location: "Chile"),
  ];
  static List<ExploreSight> historicalSites = [
    ExploreSight(
        imageUrl: 'assets/search_page/taj-mahal.jpg',
        name: "The Taj Mahal",
        location: "India"),
    ExploreSight(
        imageUrl: 'assets/search_page/Abu-Simbel.jpg',
        name: "Abu Simbel",
        location: "Egypt"),
    ExploreSight(
        imageUrl: 'assets/search_page/acropolis.jpg',
        name: "Acropolis",
        location: "Athens"),
  ];
  static List<ExploreSight> mountains = [
    ExploreSight(
        imageUrl: 'assets/search_page/cuernos del paine.jpg',
        name: "cuernos del paine",
        location: "Chile"),
    ExploreSight(
        imageUrl: 'assets/search_page/ama dablam.jpg',
        name: "ama dablam ",
        location: "Nepal"),
    ExploreSight(
        imageUrl: 'assets/search_page/HUAYNA PICCHU.jpg',
        name: "HUAYNA PICCHU",
        location: "Peru"),
  ];
}
