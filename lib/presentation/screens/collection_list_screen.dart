import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/collection_provider.dart';
import '../../domain/models/collection.dart';
import '../widgets/shimmer_card.dart';
import 'package:intl/intl.dart';

class CollectionListScreen extends ConsumerStatefulWidget {
  const CollectionListScreen({super.key});

  @override
  ConsumerState<CollectionListScreen> createState() => _CollectionListScreenState();
}

class _CollectionListScreenState extends ConsumerState<CollectionListScreen> {
  @override
  Widget build(BuildContext context) {
    final collectionsAsync = ref.watch(collectionListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Collections'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded, color: Theme.of(context).primaryColor),
            onPressed: () => ref.read(collectionListProvider.notifier).refresh(),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: collectionsAsync.when(
        data: (collections) => _CollectionsList(collections: collections),
        loading: () => ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          itemCount: 4,
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemBuilder: (context, index) => const ShimmerCard(),
        ),
        error: (err, stack) => _ErrorView(error: err.toString()),
      ),
    );
  }
}

class _CollectionsList extends ConsumerWidget {
  final List<Collection> collections;

  const _CollectionsList({required this.collections});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (collections.isEmpty) {
      return const Center(
        child: Text('No collections found.', style: TextStyle(color: Colors.grey, fontSize: 16)),
      );
    }
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(collectionListProvider.notifier).refresh();
      },
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        itemCount: collections.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final collection = collections[index];

          return TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 400 + (index * 100).clamp(0, 400)),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(offset: Offset(0, 30 * (1 - value)), child: child),
              );
            },
            child: _CollectionCard(collection: collection),
          );
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  final Collection collection;

  const _CollectionCard({required this.collection});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMMM d, yyyy');

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: SizedBox(
              height: 180,
              width: double.infinity,
              child: Image.network(
                collection.coverImageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: const Color(0xFFF0F0F0),
                    child: const Center(child: Icon(Icons.image_not_supported_outlined, size: 48, color: Colors.grey)),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        collection.title,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Color(0xFF1C1B1F)),
                      ),
                    ),
                    if (collection.isPremium)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7E6),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFFFD591)),
                        ),
                        child: const Text(
                          'PREMIUM',
                          style: TextStyle(
                            color: Color(0xFFD48806),
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  collection.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, height: 1.5, color: Colors.grey.shade700),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.layers_outlined, size: 16, color: Colors.grey.shade600),
                        const SizedBox(width: 6),
                        Text(
                          '${collection.sectionCount} Units',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      dateFormat.format(collection.createdAt),
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String error;

  const _ErrorView({required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(error, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
