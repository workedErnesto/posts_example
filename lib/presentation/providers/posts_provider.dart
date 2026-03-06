import 'package:posts/domain/entity/post_entity.dart';
import 'package:posts/domain/usecase/fetch_posts_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_provider.g.dart';

@riverpod
class Posts extends _$Posts {
  @override
  Future<List<PostEntity>> build() =>
      ref.watch(fetchPostsUseCaseProvider).call();
}
