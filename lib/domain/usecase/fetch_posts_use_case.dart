import 'package:posts/data/repository/posts_repository.dart';
import 'package:posts/domain/entity/post_entity.dart';
import 'package:posts/domain/repository/i_posts_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_posts_use_case.g.dart';

class FetchPostsUseCase {
  final IPostsRepository _repository;

  FetchPostsUseCase({required IPostsRepository repository})
    : _repository = repository;

  Future<List<PostEntity>> call() async => await _repository.fetchPosts();
}

@riverpod
FetchPostsUseCase fetchPostsUseCase(Ref ref) =>
    FetchPostsUseCase(repository: ref.watch(postsRepositoryProvider));
