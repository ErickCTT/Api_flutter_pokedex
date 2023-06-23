import 'package:api_pokemon/ui/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  Pokemon? pokemon;
  int pokemonId = 0;
  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async {
    pokemonId++;
    final response =
        await Dio().get("https://pokeapi.co/api/v2/pokemon/$pokemonId");
    pokemon = Pokemon.fromJson(response.data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "POKEDEX TEMPORADA 1",
          style: TextStyle(
              fontSize: 22,
              color: Colors.red,
              fontFamily: AutofillHints.birthday),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Este pokedex se realizo con una peticion Pttp',
              style: TextStyle(color: Colors.green, fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            Text(pokemon?.name ?? "no data"),
            if (pokemon != null) Image.network(pokemon!.sprites.frontDefault),
            if (pokemon != null) Image.network(pokemon!.sprites.backDefault),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          getPokemon();
        },
      ),
    );
  }
}
