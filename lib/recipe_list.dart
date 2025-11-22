import 'dart:convert';
import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  List<Recipe> recipes = [];

  @override
  void initState() {
    super.initState();
    loadRecipes();
  }

  void loadRecipes() {
    const jsonString = '''
    [
      {"id": 1, "title": "Chicken Biryani", "ingredients": ["Chicken","Rice","Spices"]},
      {"id": 2, "title": "Beef Curry", "ingredients": ["Beef","Onion","Garlic"]},
      {"id": 3, "title": "Vegetable Soup", "ingredients": ["Carrot","Potato","Beans"]}
    ]
    ''';

    final List decoded = json.decode(jsonString);
    recipes = decoded.map((item) => Recipe.fromJson(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].title),
          );
        },
      ),
    );
  }
}
