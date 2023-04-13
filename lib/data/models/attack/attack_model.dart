import 'package:poke_app/data/models/models.dart';

class AttackModel {
  int id;
  String name;
  String image;
  PokemonTypeModel type;
  AttackTypeModel attackType;
  int damage;
  int pp;
  int accuracy;
  String description;

  AttackModel({
    required this.id,
    required this.name,
    required this.image,
    required this.type,
    required this.damage,
    required this.pp,
    required this.accuracy,
    required this.attackType,
    required this.description,
  });
}
