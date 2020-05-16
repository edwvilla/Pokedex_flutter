import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/constants.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage(this.id);
  final int id;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Map detailsData;
  @override
  void initState() {
    super.initState();
    getDetails(widget.id);
  }

  void getDetails(id) async {
    http.Response response = await http.get('$detailsPkmURL/$id/');
    var data = jsonDecode(response.body);
    setState(() {
      detailsData = data;
    });
    print(detailsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30.0,
            )),
      ),
      body: Column(
        children: <Widget>[
          Container(
            
          ),
        ],
      ),
    );
  }
}
