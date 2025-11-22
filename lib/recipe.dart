class Recipe {
  final int id;
  final String title;
  final List<String> ingredients;

  Recipe({
    required this.id,
    required this.title,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      title: json['title'],
      ingredients: List<String>.from(json['ingredients']),
    );
  }
}
