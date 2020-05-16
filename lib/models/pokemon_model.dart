class Pokemon {
  String _sId;
  int _orderID;
  int _nDex;
  String _name;
  String _type1;
  String _type2;
  String _ability1;
  String _ability2;
  String _hiddenability;
  int _hp;
  int _atk;
  int _def;
  int _spatk;
  int _spdef;
  int _spe;
  String _note;
  String _tier;
  String _image;

  Pokemon(
      {String sId,
      int orderID,
      int nDex,
      String name,
      String type1,
      String type2,
      String ability1,
      String ability2,
      String hiddenability,
      int hp,
      int atk,
      int def,
      int spatk,
      int spdef,
      int spe,
      String note,
      String tier,
      String image}) {
    this._sId = sId;
    this._orderID = orderID;
    this._nDex = nDex;
    this._name = name;
    this._type1 = type1;
    this._type2 = type2;
    this._ability1 = ability1;
    this._ability2 = ability2;
    this._hiddenability = hiddenability;
    this._hp = hp;
    this._atk = atk;
    this._def = def;
    this._spatk = spatk;
    this._spdef = spdef;
    this._spe = spe;
    this._note = note;
    this._tier = tier;
    this._image = image;
  }

  String get sId => _sId;
  set sId(String sId) => _sId = sId;
  int get orderID => _orderID;
  set orderID(int orderID) => _orderID = orderID;
  int get nDex => _nDex;
  set nDex(int nDex) => _nDex = nDex;
  String get name => _name;
  set name(String name) => _name = name;
  String get type1 => _type1;
  set type1(String type1) => _type1 = type1;
  String get type2 => _type2;
  set type2(String type2) => _type2 = type2;
  String get ability1 => _ability1;
  set ability1(String ability1) => _ability1 = ability1;
  String get ability2 => _ability2;
  set ability2(String ability2) => _ability2 = ability2;
  String get hiddenability => _hiddenability;
  set hiddenability(String hiddenability) => _hiddenability = hiddenability;
  int get hp => _hp;
  set hp(int hp) => _hp = hp;
  int get atk => _atk;
  set atk(int atk) => _atk = atk;
  int get def => _def;
  set def(int def) => _def = def;
  int get spatk => _spatk;
  set spatk(int spatk) => _spatk = spatk;
  int get spdef => _spdef;
  set spdef(int spdef) => _spdef = spdef;
  int get spe => _spe;
  set spe(int spe) => _spe = spe;
  String get note => _note;
  set note(String note) => _note = note;
  String get tier => _tier;
  set tier(String tier) => _tier = tier;
  String get image => _image;
  set image(String image) => _image = image;

  Pokemon.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _orderID = json['orderID'];
    _nDex = json['nDex'];
    _name = json['name'];
    _type1 = json['type1'];
    _type2 = json['type2'];
    _ability1 = json['ability1'];
    _ability2 = json['ability2'];
    _hiddenability = json['hiddenability'];
    _hp = json['hp'];
    _atk = json['atk'];
    _def = json['def'];
    _spatk = json['spatk'];
    _spdef = json['spdef'];
    _spe = json['spe'];
    _note = json['note'];
    _tier = json['tier'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['orderID'] = this._orderID;
    data['nDex'] = this._nDex;
    data['name'] = this._name;
    data['type1'] = this._type1;
    data['type2'] = this._type2;
    data['ability1'] = this._ability1;
    data['ability2'] = this._ability2;
    data['hiddenability'] = this._hiddenability;
    data['hp'] = this._hp;
    data['atk'] = this._atk;
    data['def'] = this._def;
    data['spatk'] = this._spatk;
    data['spdef'] = this._spdef;
    data['spe'] = this._spe;
    data['note'] = this._note;
    data['tier'] = this._tier;
    data['image'] = this._image;
    return data;
  }
}
