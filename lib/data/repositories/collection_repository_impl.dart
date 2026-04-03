import '../../domain/models/collection.dart';
import '../../domain/repositories/collection_repository.dart';
import '../datasources/collection_remote_data_source.dart';
import '../services/collection_cache_service.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  final CollectionRemoteDataSource _remoteDataSource;
  final CollectionCacheService _cacheService;

  CollectionRepositoryImpl({
    required CollectionRemoteDataSource remoteDataSource,
    required CollectionCacheService cacheService,
  })  : _remoteDataSource = remoteDataSource,
        _cacheService = cacheService;

  @override
  Future<List<Collection>> getCollections({bool forceRefresh = false}) async {
    if (!forceRefresh) {
      final cached = await _cacheService.getCachedCollections();
      if (cached != null) return cached;
    }

    final freshData = await _remoteDataSource.fetchCollections();
    await _cacheService.saveCollections(freshData);
    return freshData;
  }
}
