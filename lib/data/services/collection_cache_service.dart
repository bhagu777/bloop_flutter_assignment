import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/models/collection.dart';

class CollectionCacheService {
  static const String _boxName = 'collection_cache_v2';
  static const String _collectionsKey = 'collections';

  Future<void> init() async {
    final directory = await getApplicationSupportDirectory();
    await Hive.initFlutter(directory.path);
    await Hive.openBox(_boxName);
  }

  Future<void> saveCollections(List<Collection> collections) async {
    final box = Hive.box(_boxName);
    final jsonData = collections.map((c) {
      return {
        'id': c.id,
        'title': c.title,
        'description': c.description,
        'coverImageUrl': c.coverImageUrl,
        'creatorId': c.creatorId,
        'isPremium': c.isPremium,
        'sectionCount': c.sectionCount,
        'createdAt': c.createdAt.toIso8601String(),
      };
    }).toList();
    await box.put(_collectionsKey, jsonEncode(jsonData));
  }

  Future<List<Collection>?> getCachedCollections() async {
    final box = Hive.box(_boxName);
    final String? jsonString = box.get(_collectionsKey);
    
    if (jsonString == null) return null;

    final List<dynamic> jsonData = jsonDecode(jsonString);
    return jsonData.map((item) => Collection.fromJson(item as Map<String, dynamic>)).toList();
  }

  Future<void> clearAll() async {
    final box = Hive.box(_boxName);
    await box.clear();
  }
}
