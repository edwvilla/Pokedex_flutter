import 'package:flutter/material.dart';

const kPokedexTitle = TextStyle(
  color: Colors.black,
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const kPokeBall = 'assets/pokeball.png';
const kPokeBallWhite = 'assets/pokeball_white.png';

const firstGenURL =
    'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';


const imgFailed =
    'https://ya-webdesign.com/transparent250_/pokemon-clipart-silhouette-1.png';


const Map<String, Color> primaryColor = {
  'grass': Color(0xff49d0b0),
  'water': Color(0xFF58ABF6),
  'rock': Color(0xffd5e1eb),
  'bug': Color(0xff50f2d0),
  'normal': Color(0xff9fc7b7),
  'poison': Color(0xff5685f5),
  'electric': Color(0xfffaf25f),
  'ground': Color(0xfff0c37d),
  'ice': Color(0xff7aedfa),
  'dark': Color(0xffd3e0e0),
  'fairy': Color(0xff9f71e3),
  'psychic': Color(0xffce91eb),
  'fighting': Color(0xff9cd44e),
  'ghost': Color(0xff6d3bad),
};
const Map<String, Color> secondaryColor = {
  'grass': Color(0xff4fd68b),
  'water': Color(0xFF429BED),
  'rock': Color(0xffbbc7d1),
  'bug': Color(0xff4bcfb2),
  'normal': Color(0xff9AB8AC),
  'poison': Color(0xff094be8),
  'electric': Color(0xffe8dd09),
  'ground': Color(0xffcf9b48),
  'ice': Color(0xff1bcfe3),
  'dark': Color(0xff9bbfbf),
  'fairy': Color(0xff784abd),
  'psychic': Color(0xffbc6ee0),
  'fighting': Color(0xff72ab22),
  'ghost': Color(0xff42206e),
};

const List<Color> noColor = [Color(0xfff79496), Color(0xfffc6b6d)];
