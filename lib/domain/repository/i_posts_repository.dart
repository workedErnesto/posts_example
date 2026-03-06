import 'package:posts/domain/entity/post_entity.dart';

abstract interface class IPostsRepository {
  Future<List<PostEntity>> fetchPosts();
}
