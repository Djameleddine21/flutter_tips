// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    firstName: json['prenom'] as String ?? 'Djamel',
    lastName: json['nom'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'prenom': instance.firstName,
      'nom': instance.lastName,
      'age': instance.age,
    };
