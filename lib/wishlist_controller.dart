import 'package:get/get.dart';
import 'package:homey/models/wishlist_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class WishlistController extends GetxController{
  static Database? _db;

  var wishlists = <WishlistModel>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }
  Future<Database> initDB() async{
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'task_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE wishlists(
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            brand TEXT, 
            price TEXT, 
            image TEXT, 
            icon TEXT, 
            isCompleted INTEGER
          )
        ''');
      },
    );
  }

  Future<int> addWishlist(WishlistModel wishlist) async {
    var dbClient = await db;
    int result = await dbClient!.insert('wishlists', wishlist.toMap());
    loadWishlist();
    return result;
  }

  Future<void> loadWishlist() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('wishlists');
    wishlists.assignAll(queryResult.map((data) => WishlistModel.fromMap(data)).toList());
  }

  Future<int> updateWishlist(WishlistModel wishlist) async {
    var dbClient = await db;
    int result = await dbClient!.update(
      'wishlists',
      wishlist.toMap(),
      where: 'id = ?',
      whereArgs: [wishlist.id],
    );
    loadWishlist();
    return result;
  }

  // Delete Task
  Future<void> deleteWishlist(int id) async {
    var dbClient = await db;
    await dbClient!.delete('wishlists', where: 'id = ?', whereArgs: [id]);
    loadWishlist();
  }


  @override
  void onInit() {
    super.onInit();
    loadWishlist(); // Memuat wishlist saat controller diinisialisasi
  }
}

