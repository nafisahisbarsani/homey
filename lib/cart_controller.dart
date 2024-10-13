import 'package:get/get.dart';
import 'package:homey/models/cart_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class CartController extends GetxController{
  static Database? _db;

  var carts = <CartModel>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }
  Future<Database> initDB() async{
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'cart_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE carts(
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            image TEXT, 
            brand TEXT, 
            price TEXT,
            isCompleted INTEGER
          )
        ''');
      },
    );
  }
  Future<int> addCart(CartModel cart) async {
    var dbClient = await db;
    int result = await dbClient!.insert('carts', cart.toMap());
    loadCart();
    return result;
  }


  Future<void> loadCart() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('carts');
    carts.assignAll(queryResult.map((data) => CartModel.fromMap(data)).toList());
  }

  Future<int> updateWishlist(CartModel cart) async {
    var dbClient = await db;
    int result = await dbClient!.update(
      'carts',
      cart.toMap(),
      where: 'id = ?',
      whereArgs: [cart.id],
    );
    loadCart();
    return result;
  }

  // Delete Task
  Future<void> deleteCart(int id) async {
    var dbClient = await db;
    await dbClient!.delete('carts', where: 'id = ?', whereArgs: [id]);
    loadCart();
  }

}