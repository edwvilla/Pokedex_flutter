import 'package:flutter/material.dart';
import 'package:pokedex/components/card_pokemon.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/services/db_pokemon.dart';

class HomePage extends StatelessWidget {
  HomePage(this.cardsData);
  final cardsData;
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
        leading: Icon(
          Icons.tune,
          color: Colors.grey,
          size: 30.0,
        ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 90.0, 0, 0),
                  child: Text(
                    'Pokedex',
                    style: kPokedexTitle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: PokemonList(cardsData),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PokemonList extends StatefulWidget {
  PokemonList(this.cardsData);
  final cardsData;
  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  DataModel dataModel = DataModel();
  int id;
  String name;
  String image;
  String type1;
  String type2;
  var data;
  @override
  void initState() {
    super.initState();
    data = widget.cardsData;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return PokemonCard(
            index: index,
            id: data[index]['nDex'],
            image: data[index]['image'],
            name: data[index]['name'],
            type1: data[index]['type1'],
            type2: data[index]['type2'],
          );
        });
  }
}
