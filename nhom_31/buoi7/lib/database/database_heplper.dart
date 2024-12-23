import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/note.dart';
import '../model/User.dart';

class DatabaseHelper{
  static Database? _database; // static+ nullable
  static final DatabaseHelper instance = DatabaseHelper._(); // singleton pattern

  DatabaseHelper._(); // Private constructor;

  // Getter để lấy instance của database:
  Future<Database> get database async{
    if (_database!=null) return _database!;

    _database = await _initDB();
    return _database!;
  }

  //Khoiwoiwr tạo Database
  // version de quan ly phien ban DB
  // onCreate sẽ ược khi database được tạo lần dau
  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'notes.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute(
        """
    CREATE TABLE users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      username TEXT NOT NULL UNIQUE,
      password TEXT NOT NULL,
      fullname TEXT NOT NULL,
      dateOfBirth TEXT NOT NULL
    );
    """
    );

    await db.execute(
        """
    CREATE TABLE notes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      content TEXT NOT NULL,
      createdAt TEXT NOT NULL,
      userId INTEGER NOT NULL,
      FOREIGN KEY(userId) REFERENCES users(id)
    );
    """
    );
  }

  Future<int> insertNote(Note note) async {
    final db = await database;
    return await db.insert('notes', note.toMap());
  }

  // Lấy danh sách ghi chú:
  Future<List<Note>> getNotes() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('notes', orderBy: 'createdAt DESC');
    return List.generate(maps.length, (i) => Note.fromMap(maps[i]));
  }

  // Xóa
  Future<int> deleteNote(int id) async {
    final db = await database;
    return await db.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }



// Thêm người dùng
  Future<int> insertUser(User user) async {
    final db = await database;
    return await db.insert('users', user.toMap());
  }

// Đăng nhập người dùng
  Future<User?> authenticate(String username, String password) async {
    final db = await database;
    final maps = await db.query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }
    return null;
  }



}