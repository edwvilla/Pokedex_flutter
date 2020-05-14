import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard({this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF49D0B0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10),
      child: Text('this is $index'),
    );
  }
}
