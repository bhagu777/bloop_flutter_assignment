

part of 'collection_section.dart';

_$CollectionSectionImpl _$$CollectionSectionImplFromJson(
  Map<String, dynamic> json,
) => _$CollectionSectionImpl(
  id: json['id'] as String,
  collectionId: json['collectionId'] as String,
  title: json['title'] as String,
  order: (json['order'] as num).toInt(),
  contentCount: (json['contentCount'] as num).toInt(),
);

Map<String, dynamic> _$$CollectionSectionImplToJson(
  _$CollectionSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'collectionId': instance.collectionId,
  'title': instance.title,
  'order': instance.order,
  'contentCount': instance.contentCount,
};
