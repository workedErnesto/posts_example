import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts/presentation/providers/posts_provider.dart';
import 'package:posts/presentation/widgets/post_error_block.dart';
import 'package:posts/presentation/widgets/widgets.dart';

class PostListView extends ConsumerWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(postsProvider);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: postsAsync.when(
        data: (posts) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) =>
                PostCard(post: posts[index]),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 20),
            itemCount: posts.length,
          );
        },
        error: (err, st) {
          return PostErrorBlock();
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
