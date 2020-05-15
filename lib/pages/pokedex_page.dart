import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex/components/pokemon_card.dart';
import 'package:pokedex/constants.dart';
import 'package:http/http.dart' as http;

class PokedexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -92,
            left: 200,
            child: Opacity(
              child: Image.asset(
                kPokeBall,
                height: 300,
                width: 300,
              ),
              opacity: 0.1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0, 0),
                  child: Text(
                    'Pokedex',
                    style: kPokedexTitle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: PokemonList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PokemonList extends StatefulWidget {
  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  Map data;
  Map pokeData;

  Future getData() async {
    http.Response response = await http.get(firstGenURL);
    var data = jsonDecode(response.body);
    setState(() {
      pokeData = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print(pokeData['pokemon'][0]['name']);
    return GridView.count(
        childAspectRatio: 4 / 3,
        padding: EdgeInsets.all(0),
        crossAxisCount: 2,
        children: List.generate(
            20,
            (index) => PokemonCard(
                  index: index,
                  image: pokeData['pokemon'][index]['img'],
                  name: pokeData['pokemon'][index]['name'],
                  types: pokeData['pokemon'][index]['type'],
                )));
  }
}
