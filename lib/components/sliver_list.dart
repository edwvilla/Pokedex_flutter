import 'package:flutter/material.dart';
import 'package:pokedex/services/http_service.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/components/card_pokemon.dart';

class PokemonList extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: httpService.getData(),
        builder: (BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot) {
          if (snapshot.hasData) {
            List<Pokemon> pokemons = snapshot.data;
            return GridView.builder(
                padding: EdgeInsets.fromLTRB(10, 140.0, 10, 0),
                itemCount: pokemons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return PokemonCard(
                    index: index,
                    id: pokemons[index].nDex,
                    image: pokemons[index].image,
                    name: pokemons[index].name,
                    type1: pokemons[index].type1,
                    type2: pokemons[index].type2,
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
