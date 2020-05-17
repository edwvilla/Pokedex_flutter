class Pokemon {
  String sId;
  int orderID;
  int nDex;
  String name;
  String type1;
  String type2;
  String ability1;
  String ability2;
  String hiddenability;
  int hp;
  int atk;
  int def;
  int spatk;
  int spdef;
  int spe;
  String note;
  String tier;
  String image;

  Pokemon(
      {this.sId,
      this.orderID,
      this.nDex,
      this.name,
      this.type1,
      this.type2,
      this.ability1,
      this.ability2,
      this.hiddenability,
      this.hp,
      this.atk,
      this.def,
      this.spatk,
      this.spdef,
      this.spe,
      this.note,
      this.tier,
      this.image});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      sId: json['_id'] as String,
      orderID: json['orderID'] as int,
      nDex: json['nDex'] as int,
      name: json['name'] as String,
      type1: json['type1'] as String,
      type2: json['type2'] as String,
      ability1: json['ability1'] as String,
      ability2: json['ability2'] as String,
      hiddenability: json['hiddenability'] as String,
      hp: json['hp'] as int,
      atk: json['atk'] as int,
      def: json['def'] as int,
      spatk: json['spatk'] as int,
      spdef: json['spdef'] as int,
      spe: json['spe'] as int,
      note: json['note'] as String,
      tier: json['tier'] as String,
      image: json['image'] as String,
    );
  }
}
