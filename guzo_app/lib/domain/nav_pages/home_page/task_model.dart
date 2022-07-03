class Task {
  String imageUrl;
  String title;

  Task({required this.imageUrl, required this.title});

  static List<Task> tasks = [
    Task(imageUrl: 'assets/home_page/plane.png', title: "Tickets"),
    Task(imageUrl: 'assets/home_page/hotel.png', title: "Hotels"),
    Task(imageUrl: 'assets/home_page/adventure.png', title: "Adventures"),
  ];
}
