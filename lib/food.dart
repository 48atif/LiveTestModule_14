class Food {
  final int id;
  final String title;
  final String description;
  final int calories;

  Food({
    required this.id,
    required this.title,
    required this.description,
    required this.calories,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      calories: json['calories'],
    );
  }
}
