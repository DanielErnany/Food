class Recipe {
  String name;
  String imagePath;
  String tipo;
  List<String> ingredients;
  String ingredientsDescription;
  String steps;

  Recipe({
    required this.name,
    required this.imagePath,
    required this.tipo,
    required this.ingredients,
    required this.ingredientsDescription,
    required this.steps,
  });

  bool isSweet() {
    if (tipo == "doce") {
      return true;
    } else {
      return false;
    }
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    List<String> ingredients = [];

    if (map['IngredientesBase'] != null && map['IngredientesBase'] is List) {
      ingredients =
          List<String>.from(map['IngredientesBase'][0]['nomesIngrediente']);
    }

    return Recipe(
      name: map['receita'] ?? '',
      imagePath: map['link_imagem'] ?? '',
      tipo: map['tipo'] ?? '',
      ingredients: ingredients,
      ingredientsDescription: map['ingredientes'] ?? '',
      steps: map['modo_preparo'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Recipe{name: $name, imagePath: $imagePath, tipo: $tipo, ingredients: $ingredients, ingredientsDescription: $ingredientsDescription, steps: $steps}';
  }
}
