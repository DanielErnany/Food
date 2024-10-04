import 'package:flutter/material.dart';
import 'package:food/models/recipe.dart';
import 'package:food/widgets/flavor_tag.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late Recipe _recipe;

  bool _baseIngredients = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _recipe = ModalRoute.of(context)!.settings.arguments as Recipe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _recipe.name,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              _recipe.imagePath,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: FlavorTag(
                      isSweet: _recipe.isSweet(),
                    ),
                  ),
                  const Text(
                    "Ingredientes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Lista"),
                      Checkbox(
                          value: _baseIngredients,
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _baseIngredients = value;
                              });
                            }
                          }),
                    ],
                  ),
                  const SizedBox(height: 5),
                  _baseIngredients == true
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _recipe.ingredients
                                .map((element) => Text(element))
                                .toList(),
                          ),
                        )
                      : Text(
                          _recipe.ingredientsDescription,
                        ),
                  const SizedBox(height: 10),
                  const Text(
                    "Modo de Preparo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _recipe.steps,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
