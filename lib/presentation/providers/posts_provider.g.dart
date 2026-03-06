// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Posts)
final postsProvider = PostsProvider._();

final class PostsProvider
    extends $AsyncNotifierProvider<Posts, List<PostEntity>> {
  PostsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postsHash();

  @$internal
  @override
  Posts create() => Posts();
}

String _$postsHash() => r'22a59b63809a55e9d5e7b1345da6ece1bf6da638';

abstract class _$Posts extends $AsyncNotifier<List<PostEntity>> {
  FutureOr<List<PostEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<PostEntity>>, List<PostEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PostEntity>>, List<PostEntity>>,
              AsyncValue<List<PostEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
