import 'package:posts/data/models/post_model.dart';

abstract interface class IRemotePostsDataSource {
  Future<List<PostModel>>fetchPosts();
}
