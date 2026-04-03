import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String id,
    required String title,
    required String description,
    required String coverImageUrl,
    required String creatorId,
    required bool isPremium,
    required int sectionCount,
    required DateTime createdAt,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) {
    return Collection(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? 'Untitled',
      description: json['description'] as String? ?? '',
      coverImageUrl: json['coverImageUrl'] as String? ?? '',
      creatorId: json['creatorId'] as String? ?? '',
      isPremium: json['isPremium'] as bool? ?? false,
      sectionCount: json['sectionCount'] as int? ?? 0,
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt'] as String) 
          : DateTime.now(),
    );
  }
}
