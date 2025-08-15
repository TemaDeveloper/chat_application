import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id;
  final String email;
  final String phoneNumber;
  final String name;
  final DateTime? dateOfBirth;
  final String? userAvatar;

  const User({
    this.id,
    this.email = '',
    this.phoneNumber = '',
    this.name = '',
    this.dateOfBirth,
    this.userAvatar,
  });

  int get age => dateOfBirth == null ? 0 : DateTime.now().year - dateOfBirth!.year;

  String get nameAge => '$name, $age';

  User copyWith({
    String? id,
    String? email,
    String? phoneNumber,
    String? name,
    DateTime? dateOfBirth,
    String? userAvatar,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        name: name ?? this.name,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        userAvatar: userAvatar ?? this.userAvatar
      );

  @override
  List<Object?> get props => [
        id,
        email,
        phoneNumber,
        name,
        dateOfBirth,
        userAvatar,
      ];
}