import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/data/datasources/i_remote_posts_data_source.dart';
import 'package:posts/data/models/post_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_posts_data_source.g.dart';

class RemotePostsDataSource implements IRemotePostsDataSource {
  final Dio _dio;

  RemotePostsDataSource({required Dio dio}) : _dio = dio;
  @override
  @override
  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await _dio.get(
        "https://jsonplaceholder.typicode.com/posts",
      );
      final List<dynamic> data = response.data;

      return data.map((json) => PostModel.fromJson(json)).toList();
    } on DioException catch (e) {
      debugPrint("статус: ${e.response?.statusCode}");
      debugPrint("заголовки ответа: ${e.response?.headers}");
      debugPrint("тело ответа: ${e.response?.data}");
      rethrow;
    }
  }
}

@riverpod
RemotePostsDataSource remotePostsDataSource(Ref ref) =>
    RemotePostsDataSource(dio: GetIt.I<Dio>());
