import 'package:libreria/models/usuario.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UsersDatabase {
  static final UsersDatabase instance = UsersDatabase._init();

  static Database? _database;

  UsersDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('users.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const String idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const String textType = 'TEXT NOT NULL';

    await db.execute('''
      CREATE TABLE $tableUsers ( 
        ${UsuarioFields.id} $idType, 
        ${UsuarioFields.nombre} $textType,
        ${UsuarioFields.apellido} $textType,
        ${UsuarioFields.email} $textType,
        ${UsuarioFields.password} $textType,
      )
    ''');
  }

  Future<Usuario> insertUser(Usuario user) async {
    final db = await instance.database;

    final id = await db.insert(tableUsers, user.toJson());
    return user.copy(id: id);
  }

  Future<List<Usuario>> readAllUsers() async {
    final db = await instance.database;

    final orderBy = '${UsuarioFields.apellido} ASC';

    final result = await db.query(tableUsers, orderBy: orderBy);

    return result.map((json) => Usuario.fromJson(json)).toList();
  }

  Future<List<Usuario>> groupUsers() async {
    final db = await instance.database;

    final result = await db.query(tableUsers, groupBy: UsuarioFields.nombre);

    return result.map((json) => Usuario.fromJson(json)).toList();
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
