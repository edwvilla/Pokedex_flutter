import 'package:http/http.dart' as http;
import 'package:pokedex/models/detail_model.dart';
import 'dart:convert';
import 'package:pokedex/models/pokemon_model.dart';

const dbURL = 'https://pokedexvuejs.herokuapp.com/pokedexdb';
const detailsPkmURL = 'https://pokeapi.co/api/v2/pokemon';

class HttpService {
  Future<List<Pokemon>> getData() async {
    http.Response response = await http.get(dbURL);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Pokemon> pokemons = body
          .map(
            (dynamic item) => Pokemon.fromJson(item),
          )
          .toList();
      return pokemons;
    } else {
      throw "Can't get pokemon data.";
    }
  }

  Future getDetails(id) async {
    http.Response response = await http.get('$detailsPkmURL/$id/');

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<PokemonDetail> details = body
          .map(
            (dynamic item) => PokemonDetail.fromJson(item),
          )
          .toList();
      return details;
    } else {
      throw "Can't get details data.";
    }
    // print(detailsData);
  }
}
