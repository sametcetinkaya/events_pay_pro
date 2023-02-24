class Event {
  String title;
  String image;
  String location;
  String date;
  int price;
  String description;
  bool isActive;

  Event({
    required this.title,
    required this.image,
    required this.location,
    required this.date,
    required this.price,
    required this.isActive,
    required this.description
  });
}