import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/collection_remote_data_source.dart';
import '../../data/repositories/collection_repository_impl.dart';
import '../../data/services/collection_cache_service.dart';
import '../../domain/models/collection.dart';
import '../../domain/repositories/collection_repository.dart';

part 'collection_provider.g.dart';

@riverpod
CollectionCacheService collectionCacheService(Ref ref) => CollectionCacheService();

@riverpod
CollectionRemoteDataSource collectionRemoteDataSource(Ref ref) => CollectionRemoteDataSource();

@riverpod
CollectionRepository collectionRepository(Ref ref) => CollectionRepositoryImpl(
      remoteDataSource: ref.watch(collectionRemoteDataSourceProvider),
      cacheService: ref.watch(collectionCacheServiceProvider),
    );

@riverpod
class CollectionList extends _$CollectionList {
  @override
  Future<List<Collection>> build() async {
    final cacheService = ref.read(collectionCacheServiceProvider);

    await cacheService.init();

    final cachedData = await cacheService.getCachedCollections();
    
    if (cachedData != null && cachedData.isNotEmpty) {
      unawaited(_fetchFreshData());
      return cachedData;
    }

    return _fetchFreshData();
  }

  Future<List<Collection>> _fetchFreshData() async {
    final repository = ref.read(collectionRepositoryProvider);
    
    try {
      final freshData = await repository.getCollections(forceRefresh: true);

      state = AsyncValue.data(freshData);
      
      return freshData;
    } catch (e) {
      if (state.hasValue) return state.value!;
      rethrow;
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchFreshData());
  }
}
