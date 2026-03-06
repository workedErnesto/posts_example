import 'package:posts/data/datasources/i_remote_posts_data_source.dart';
import 'package:posts/data/datasources/remote_posts_data_source.dart';
import 'package:posts/domain/entity/post_entity.dart';
import 'package:posts/domain/repository/i_posts_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_repository.g.dart';

class PostsRepository implements IPostsRepository {
  final IRemotePostsDataSource _remotePostsDataSource;

  PostsRepository({required IRemotePostsDataSource remotePostsDataSource})
    : _remotePostsDataSource = remotePostsDataSource;
  @override
  Future<List<PostEntity>> fetchPosts() async {
    final posts = await _remotePostsDataSource.fetchPosts();
    return posts.map((post) => post.toEntity()).toList();
  }
}

@riverpod
IPostsRepository postsRepository(Ref ref) => PostsRepository(
  remotePostsDataSource: ref.watch(remotePostsDataSourceProvider),
);
