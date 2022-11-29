class Catagory {
  final String image;
  final String name;

  Catagory({required this.image, required this.name});

  static List<Catagory> catagories = [
    Catagory(image: 'assets/search_page/popular.png', name: "Popular"),
    Catagory(image: 'assets/search_page/trending1.png', name: "Trending"),
    Catagory(image: 'assets/search_page/recent1.png', name: "Recent"),
  ];
}
