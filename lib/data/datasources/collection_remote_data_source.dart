import '../../domain/models/collection.dart';

class CollectionRemoteDataSource {
  Future<List<Collection>> fetchCollections() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    final collectionTitles = [
      'Mastering Flutter UI',
      'Advanced Riverpod Patterns',
      'Clean Architecture Deep Dive',
      'Dart 3.0: Full Guide',
      'Firebase with Flutter',
      'Animations in Motion',
      'CI/CD for Mobile Apps',
      'State Management Showdown',
      'Responsive Design Hacks',
      'Flutter Web & Desktop Mastery',
    ];

    final rawFirestoreData = List.generate(10, (index) {
      final id = (index + 1).toString();
      return {
        'id': id,
        'title': collectionTitles[index],
        'description': 'Exploring ${collectionTitles[index]} with practical examples and deep explanations.',
        'coverImageUrl': 'https://picsum.photos/seed/$id/600/400',
        'creatorId': 'user_$id',
        'isPremium': index % 3 == 0,
        'sectionCount': 5 + (index * 2),
        'createdAt': DateTime.now()
            .subtract(Duration(days: index * 2))
            .toIso8601String(),
      };
    });


    return rawFirestoreData.map((data) {
      return Collection.fromJson(data);
    }).toList();
  }
}
