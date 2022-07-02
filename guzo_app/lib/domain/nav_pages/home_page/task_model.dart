class Task {
  String imageUrl;
  String title;

  Task({required this.imageUrl, required this.title});

  static List<Task> tasks = [
    Task(imageUrl: 'assets/plane.png', title: "Tickets"),
    Task(imageUrl: 'assets/hotel.png', title: "Hotels"),
    Task(imageUrl: 'assets/adventure.png', title: "Adventures"),
  ];
}
