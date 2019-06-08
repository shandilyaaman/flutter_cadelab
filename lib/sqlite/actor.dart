import 'package:flutter_codelab/sqlite/dbhelper.dart';

class Actor {
  int id, age;
  String name;

  Actor({this.id, this.name, this.age});

  Map<String, dynamic> toMap() => {
        DatabaseHelper.columnName: name,
        DatabaseHelper.columnAge: age,
      };

  factory Actor.fromMap(Map<String, dynamic> data) => new Actor(
        id: data["_id"],
        name: data["name"],
        age: data["age"],
      );

  getId() => id;
  getName() => name;
  getAge() => age;
}
