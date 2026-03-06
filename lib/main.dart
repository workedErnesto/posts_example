import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:posts/data/datasources/i_remote_posts_data_source.dart';
import 'package:posts/data/datasources/remote_posts_data_source.dart';
import 'package:posts/data/repository/posts_repository.dart';
import 'package:posts/domain/repository/i_posts_repository.dart';
import 'package:posts/posts_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final GetIt sl = GetIt.I;
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        headers: {
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Mobile/15E148 Safari/604.1',
          'Accept': 'application/json',
          'Accept-Language': 'en-US,en;q=0.9',
        },
      ),
    ),
  );
  sl.registerLazySingleton<IRemotePostsDataSource>(
    () => RemotePostsDataSource(dio: sl()),
  );
  sl.registerLazySingleton<IPostsRepository>(
    () => PostsRepository(remotePostsDataSource: sl()),
  );

  runApp(ProviderScope(child: const PostsApp()));
}
