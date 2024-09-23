import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bolo de Chocolate"),
      ),
      body: Column(
        children: [
          Image.network("https://i.ytimg.com/vi/QFMxJWh3mqE/maxresdefault.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.cake, color: Colors.white),
                        Text(
                          "Doce",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Ingredientes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "2 xícaras de farinha de trigo, 1 xícara de açúcar, 1 xícara de chocolate em pó, 1 colher de sopa de fermento em pó, 1 xícara de leite, 3 ovos, 1/2 xícara de óleo",
                ),
                const SizedBox(height: 10),
                const Text(
                  "Modo de preparo",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "1. Preaqueça o forno a 180°C. 2. Em uma tigela, misture a farinha, o açúcar, o chocolate em pó e o fermento. 3. Adicione os ovos, o leite e o óleo, e misture bem até obter uma massa homogênea. 4. Despeje a massa em uma forma untada e enfarinhada. 5. Leve ao forno por aproximadamente 35 minutos ou até que, ao espetar um palito, ele saia limpo.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
