import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard({this.index, this.name, this.image, this.types});
  final int index;
  final String name;
  final String image;
  final types;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF49D0B0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(name ?? 'No data'),
              Text(index.toString() ?? 'No data'),
              Text(types.toString() ?? 'No data'),
              Image.network(image ?? imgFailed),
            ],
          ),
        ],
      ),
    );
  }
}
