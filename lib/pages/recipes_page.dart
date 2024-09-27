import 'package:flutter/material.dart';
import 'package:food/models/recipe.dart';
import 'package:food/widgets/recipe_card.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final List<Recipe> recipes = [
    Recipe(
      name: "Risoto de Cogumelos",
      tipo: "salgado",
      imagePath:
          "https://assets.tmecosys.cn/image/upload/t_web767x639/img/recipe/vimdb/269097.jpg",
      ingredients: [
        "arroz arbóreo",
        "cogumelos",
        "cebola",
        "alho",
        "vinho branco",
        "caldo de legumes",
        "queijo parmesão",
        "manteiga",
        "sal",
        "pimenta",
        "salsinha",
      ],
      ingredientsDescription:
          "2 xícaras de arroz arbóreo, 200g de cogumelos variados fatiados, 1 cebola picada, 2 dentes de alho picados, 1/2 xícara de vinho branco, 1 litro de caldo de legumes, 1/2 xícara de queijo parmesão ralado, 2 colheres de sopa de manteiga, sal e pimenta a gosto, salsinha picada para decorar",
      steps:
          "1. Em uma panela grande, aqueça 1 colher de manteiga e refogue a cebola e o alho até ficarem macios. 2. Adicione os cogumelos e cozinhe até dourar. 3. Acrescente o arroz arbóreo e refogue por 2 minutos. 4. Despeje o vinho branco e cozinhe até evaporar. 5. Adicione o caldo de legumes, uma concha por vez, mexendo sempre, até o arroz ficar al dente e cremoso. 6. Misture o queijo parmesão e a outra colher de manteiga. 7. Tempere com sal e pimenta. 8. Decore com salsinha picada antes de servir.",
    ),
    Recipe(
      name: "Bolo de Chocolate",
      tipo: "doce",
      imagePath: "https://i.ytimg.com/vi/QFMxJWh3mqE/maxresdefault.jpg",
      ingredients: [
        "farinha de trigo",
        "açúcar",
        "chocolate em pó",
        "fermento em pó",
        "leite",
        "ovos",
        "óleo"
      ],
      ingredientsDescription:
          "2 xícaras de farinha de trigo, 1 xícara de açúcar, 1 xícara de chocolate em pó, 1 colher de sopa de fermento em pó, 1 xícara de leite, 3 ovos, 1/2 xícara de óleo",
      steps:
          "1. Preaqueça o forno a 180°C. 2. Em uma tigela, misture a farinha, o açúcar, o chocolate em pó e o fermento. 3. Adicione os ovos, o leite e o óleo, e misture bem até obter uma massa homogênea. 4. Despeje a massa em uma forma untada e enfarinhada. 5. Leve ao forno por aproximadamente 35 minutos ou até que, ao espetar um palito, ele saia limpo.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Food"),
        ),
        body: Padding(
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
        ));
  }
}
