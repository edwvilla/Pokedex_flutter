import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/components/list_cards_pokemon.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Color(0xFF6E7CD8),
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Pokedex', style: kPokedexTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -95,
            left: MediaQuery.of(context).size.width - 200,
            child: Opacity(
              child: Image.asset(
                kPokeBall,
                height: 300,
                width: 300,
              ),
              opacity: 0.1,
            ),
          ),
          PokemonList(),
        ],
      ),
    );
  }
}
