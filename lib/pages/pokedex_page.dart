import 'package:flutter/material.dart';
import 'package:pokedex/components/pokemon_card.dart';
import 'package:pokedex/constants.dart';

class PokedexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0, 0),
              child: Text(
                'Pokedex',
                style: kPokedexTitle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: PokemonList(),
          ),
        ],
      ),
    );
  }
}

class PokemonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            20,
            (index) => PokemonCard(
                  index: index,
                )));
  }
}
