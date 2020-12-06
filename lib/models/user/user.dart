import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: false)

class User {
  @JsonKey(name: 'prenom', defaultValue: "Djamel")
  String firstName;

  @JsonKey(name: 'nom', nullable: false)
  String lastName;

  @JsonKey(name: 'age', required: false)
  int age;

  User({this.firstName, this.lastName, this.age});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
