

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper {
  

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'inspeksi.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );

  }

static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE parameter(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        infoinspeksi TEXT,
        parameter TEXT,
        nilai TEXT,
        catatan TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
     
  }

  // membuat item baru
  static Future<int> createItem(String? parameter, String? nilai) async {
    final db = await DatabaseHelper.db();

    final data = {'parameter': parameter, 'nilai': nilai};
    final id = await db.insert('parameter', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;

    // When a UNIQUE constraint violation occurs,
    // the pre-existing rows that are causing the constraint violation
    // are removed prior to inserting or updating the current row.
    // Thus the insert or update always occurs.
  }

  // membaca semua item
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DatabaseHelper.db();
    return db.query('parameter', orderBy: "id");
  }

  // berdasarkan id
  // belum dipakai
    static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await DatabaseHelper.db();
    return db.query('parameter', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // update item berdasarkan id
  static Future<int> updateItem(
      int id, String? nilai, String? parameter) async {
    final db = await DatabaseHelper.db();

    final data = {
      'parameter': parameter,
      'nilai': nilai,
      'createdAt': DateTime.now().toString()
    };

    final result =
        await db.update('parameter', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItem(int id) async {
    final db = await DatabaseHelper.db();
    try {
      await db.delete("parameter", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Ada yang error saat menghapus: $err");
    }
  }
}