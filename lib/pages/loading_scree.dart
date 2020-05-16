import 'package:flutter/material.dart';
import 'package:pokedex/services/db_pokemon.dart';

import 'home_page.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getCardsData();
  }

  void getCardsData() async {
    var cardsData = await DataModel().getData();

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage(cardsData)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading...'));
  }
}
