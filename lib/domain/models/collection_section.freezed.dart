part of 'collection_section.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CollectionSection _$CollectionSectionFromJson(Map<String, dynamic> json) {
  return _CollectionSection.fromJson(json);
}

/// @nodoc
mixin _$CollectionSection {
  String get id => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get contentCount => throw _privateConstructorUsedError;

  /// Serializes this CollectionSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionSectionCopyWith<CollectionSection> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionSectionCopyWith<$Res> {
  factory $CollectionSectionCopyWith(CollectionSection value, $Res Function(CollectionSection) then) =
      _$CollectionSectionCopyWithImpl<$Res, CollectionSection>;
  @useResult
  $Res call({String id, String collectionId, String title, int order, int contentCount});
}

/// @nodoc
class _$CollectionSectionCopyWithImpl<$Res, $Val extends CollectionSection>
    implements $CollectionSectionCopyWith<$Res> {
  _$CollectionSectionCopyWithImpl(this._value, this._then);

  final $Val _value;

  final $Res Function($Val) _then;

  /// Create a copy of CollectionSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id, Object? collectionId, Object? title, Object? order, Object? contentCount}) {
    return _then(
      _value.copyWith(
            id: null == id ? _value.id : id as String,
            collectionId: null == collectionId ? _value.collectionId : collectionId as String,
            title: null == title ? _value.title : title as String,
            order: null == order ? _value.order : order as int,
            contentCount: null == contentCount ? _value.contentCount : contentCount as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollectionSectionImplCopyWith<$Res> implements $CollectionSectionCopyWith<$Res> {
  factory _$$CollectionSectionImplCopyWith(_$CollectionSectionImpl value, $Res Function(_$CollectionSectionImpl) then) =
      __$$CollectionSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String collectionId, String title, int order, int contentCount});
}

/// @nodoc
class __$$CollectionSectionImplCopyWithImpl<$Res> extends _$CollectionSectionCopyWithImpl<$Res, _$CollectionSectionImpl>
    implements _$$CollectionSectionImplCopyWith<$Res> {
  __$$CollectionSectionImplCopyWithImpl(_$CollectionSectionImpl _value, $Res Function(_$CollectionSectionImpl) _then)
    : super(_value, _then);

  /// Create a copy of CollectionSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id, Object? collectionId, Object? title, Object? order, Object? contentCount}) {
    return _then(
      _$CollectionSectionImpl(
        id: null == id ? _value.id : id as String,
        collectionId: null == collectionId ? _value.collectionId : collectionId as String,
        title: null == title ? _value.title : title as String,
        order: null == order ? _value.order : order as int,
        contentCount: null == contentCount ? _value.contentCount : contentCount as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionSectionImpl implements _CollectionSection {
  const _$CollectionSectionImpl({
    required this.id,
    required this.collectionId,
    required this.title,
    required this.order,
    required this.contentCount,
  });

  factory _$CollectionSectionImpl.fromJson(Map<String, dynamic> json) => _$$CollectionSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String collectionId;
  @override
  final String title;
  @override
  final int order;
  @override
  final int contentCount;

  @override
  String toString() {
    return 'CollectionSection(id: $id, collectionId: $collectionId, title: $title, order: $order, contentCount: $contentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) || other.collectionId == collectionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.contentCount, contentCount) || other.contentCount == contentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, title, order, contentCount);

  /// Create a copy of CollectionSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionSectionImplCopyWith<_$CollectionSectionImpl> get copyWith =>
      __$$CollectionSectionImplCopyWithImpl<_$CollectionSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionSectionImplToJson(this);
  }
}

abstract class _CollectionSection implements CollectionSection {
  const factory _CollectionSection({
    required final String id,
    required final String collectionId,
    required final String title,
    required final int order,
    required final int contentCount,
  }) = _$CollectionSectionImpl;

  factory _CollectionSection.fromJson(Map<String, dynamic> json) = _$CollectionSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get collectionId;
  @override
  String get title;
  @override
  int get order;
  @override
  int get contentCount;

  /// Create a copy of CollectionSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionSectionImplCopyWith<_$CollectionSectionImpl> get copyWith => throw _privateConstructorUsedError;
}
