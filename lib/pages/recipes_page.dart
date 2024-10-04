import 'package:flutter/material.dart';
import 'package:food/models/recipe.dart';
import 'package:food/widgets/recipe_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  List<Recipe> recipes = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadRecipes();
  }

  Future<void> loadRecipes() async {
    setState(() {
      isLoading = true;
    });

    http.Response response = await http.get(
      Uri.parse('https://api-receitas-pi.vercel.app/receitas/todas'),
    );

    List recipesDatas = jsonDecode(response.body);
    recipes = recipesDatas.map((data) => Recipe.fromMap(data)).toList();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/food_logo.png',
              height: 60,
              fit: BoxFit.contain,
            ),
            Text(
              "Food",
              style: GoogleFonts.sixtyfour(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: recipes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  Recipe recipe = recipes[index];

                  return RecipeCard(recipe: recipe);
                },
              ),
            ),
    );
  }
}
