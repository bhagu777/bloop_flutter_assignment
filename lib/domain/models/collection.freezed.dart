part of 'collection.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Collection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  int get sectionCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionCopyWith<Collection> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String coverImageUrl,
    String creatorId,
    bool isPremium,
    int sectionCount,
    DateTime createdAt,
  });
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection> implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  final $Val _value;

  final $Res Function($Val) _then;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id,
    Object? title,
    Object? description,
    Object? coverImageUrl,
    Object? creatorId,
    Object? isPremium,
    Object? sectionCount,
    Object? createdAt,
  }) {
    return _then(
      _value.copyWith(
            id: null == id ? _value.id : id as String,
            title: null == title ? _value.title : title as String,
            description: null == description ? _value.description : description as String,
            coverImageUrl: null == coverImageUrl ? _value.coverImageUrl : coverImageUrl as String,
            creatorId: null == creatorId ? _value.creatorId : creatorId as String,
            isPremium: null == isPremium ? _value.isPremium : isPremium as bool,
            sectionCount: null == sectionCount ? _value.sectionCount : sectionCount as int,
            createdAt: null == createdAt ? _value.createdAt : createdAt as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res> implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(_$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String coverImageUrl,
    String creatorId,
    bool isPremium,
    int sectionCount,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res> extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(super._value, super._then);

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id,
    Object? title,
    Object? description,
    Object? coverImageUrl,
    Object? creatorId,
    Object? isPremium,
    Object? sectionCount,
    Object? createdAt,
  }) {
    return _then(
      _$CollectionImpl(
        id: null == id ? _value.id : id as String,
        title: null == title ? _value.title : title as String,
        description: null == description ? _value.description : description as String,
        coverImageUrl: null == coverImageUrl ? _value.coverImageUrl : coverImageUrl as String,
        creatorId: null == creatorId ? _value.creatorId : creatorId as String,
        isPremium: null == isPremium ? _value.isPremium : isPremium as bool,
        sectionCount: null == sectionCount ? _value.sectionCount : sectionCount as int,
        createdAt: null == createdAt ? _value.createdAt : createdAt as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$CollectionImpl implements _Collection {
  const _$CollectionImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.coverImageUrl,
    required this.creatorId,
    required this.isPremium,
    required this.sectionCount,
    required this.createdAt,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String coverImageUrl;
  @override
  final String creatorId;
  @override
  final bool isPremium;
  @override
  final int sectionCount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Collection(id: $id, title: $title, description: $description, coverImageUrl: $coverImageUrl, creatorId: $creatorId, isPremium: $isPremium, sectionCount: $sectionCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl) &&
            (identical(other.creatorId, creatorId) || other.creatorId == creatorId) &&
            (identical(other.isPremium, isPremium) || other.isPremium == isPremium) &&
            (identical(other.sectionCount, sectionCount) || other.sectionCount == sectionCount) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, coverImageUrl, creatorId, isPremium, sectionCount, createdAt);

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);
}

abstract class _Collection implements Collection {
  const factory _Collection({
    required final String id,
    required final String title,
    required final String description,
    required final String coverImageUrl,
    required final String creatorId,
    required final bool isPremium,
    required final int sectionCount,
    required final DateTime createdAt,
  }) = _$CollectionImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get coverImageUrl;
  @override
  String get creatorId;
  @override
  bool get isPremium;
  @override
  int get sectionCount;
  @override
  DateTime get createdAt;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith => throw _privateConstructorUsedError;
}
