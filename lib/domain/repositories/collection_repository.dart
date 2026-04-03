import '../models/collection.dart';

abstract class CollectionRepository {
  Future<List<Collection>> getCollections({bool forceRefresh = false});
}
