import 'package:flutter/rendering.dart';

const String tableUsers = 'users';

class UsuarioFields {
  static final List<String> values = [
    /// Add all fields
    id, nombre, apellido, email, password
  ];

  static const String id = '_id';
  static const String nombre = 'nombre';
  static const String apellido = 'apellido';
  static const String email = 'email';
  static const String password = 'password';
}

class Usuario {
  final int? id;
  final String nombre;
  final String apellido;
  final String email;
  final String password;

  const Usuario({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.password,
  });

  Usuario copy({
    int? id,
    String? nombre,
    String? apellido,
    String? email,
    String? password,
  }) =>
      Usuario(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        apellido: apellido ?? this.apellido,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  static Usuario fromJson(Map<String, Object?> json) => Usuario(
        id: json[UsuarioFields.id] as int?,
        nombre: json[UsuarioFields.nombre] as String,
        apellido: json[UsuarioFields.apellido] as String,
        email: json[UsuarioFields.email] as String,
        password: json[UsuarioFields.password] as String,
      );

  Map<String, Object?> toJson() => {
        UsuarioFields.id: id,
        UsuarioFields.nombre: nombre,
        UsuarioFields.apellido: apellido,
        UsuarioFields.email: email,
        UsuarioFields.password: password,
      };
}
