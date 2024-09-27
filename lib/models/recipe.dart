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
    return tipo == "doce";
  }
}
