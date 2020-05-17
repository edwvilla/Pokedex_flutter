import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/pages/details_page.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard(
      {this.index, this.name, this.image, this.type1, this.type2, this.id});
  final int index;
  final int id;
  final String name;
  final String image;
  final String type1;
  final String type2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            primaryColor[type1.toLowerCase()] ?? noColor[0],
            secondaryColor[type1.toLowerCase()] ?? noColor[1]
          ], stops: [
            0.0,
            0.8
          ]),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(.8, -.75),
              child: Text(
                '#$id' ?? 'No data',
                style: TextStyle(
                  color: Color(0xCCFFFFFF),
                  fontSize: 15.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment(1.4, 2.0),
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  kPokeBallWhite,
                ),
              ),
            ),
            Align(
              alignment: Alignment(1, 1.3),
              child: Image.network(
                image ?? imgFailed,
                width: MediaQuery.of(context).size.width / 3.7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$name' ?? 'No data',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.5,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TypeCard(type: type1),
                  TypeCard(type: type2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TypeCard extends StatelessWidget {
  TypeCard({
    @required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (type != "") {
        return Container(
          margin: EdgeInsets.all(2.0),
          padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: Color(0x40FFFFFF),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            '$type',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
