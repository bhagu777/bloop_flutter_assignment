// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionCacheServiceHash() =>
    r'b5207d43508052a9cff68101b2b01af46b2a4956';

/// See also [collectionCacheService].
@ProviderFor(collectionCacheService)
final collectionCacheServiceProvider =
    AutoDisposeProvider<CollectionCacheService>.internal(
      collectionCacheService,
      name: r'collectionCacheServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$collectionCacheServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CollectionCacheServiceRef =
    AutoDisposeProviderRef<CollectionCacheService>;
String _$collectionRemoteDataSourceHash() =>
    r'b827c4271af8323837e7d426c2ba133bcf1277cf';

/// See also [collectionRemoteDataSource].
@ProviderFor(collectionRemoteDataSource)
final collectionRemoteDataSourceProvider =
    AutoDisposeProvider<CollectionRemoteDataSource>.internal(
      collectionRemoteDataSource,
      name: r'collectionRemoteDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$collectionRemoteDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
typedef CollectionRemoteDataSourceRef =
    AutoDisposeProviderRef<CollectionRemoteDataSource>;
String _$collectionRepositoryHash() =>
    r'424ac9d53506695a956abf615eb811d6fa1ddf4a';

/// See also [collectionRepository].
@ProviderFor(collectionRepository)
final collectionRepositoryProvider =
    AutoDisposeProvider<CollectionRepository>.internal(
      collectionRepository,
      name: r'collectionRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$collectionRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
typedef CollectionRepositoryRef = AutoDisposeProviderRef<CollectionRepository>;
String _$collectionListHash() => r'456df6e4c83769952c2ca0eaa5a68c68635c1f21';

/// See also [CollectionList].
@ProviderFor(CollectionList)
final collectionListProvider =
    AutoDisposeAsyncNotifierProvider<CollectionList, List<Collection>>.internal(
      CollectionList.new,
      name: r'collectionListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$collectionListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CollectionList = AutoDisposeAsyncNotifier<List<Collection>>;