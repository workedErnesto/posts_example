// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_posts_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remotePostsDataSource)
final remotePostsDataSourceProvider = RemotePostsDataSourceProvider._();

final class RemotePostsDataSourceProvider
    extends
        $FunctionalProvider<
          RemotePostsDataSource,
          RemotePostsDataSource,
          RemotePostsDataSource
        >
    with $Provider<RemotePostsDataSource> {
  RemotePostsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remotePostsDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remotePostsDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemotePostsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemotePostsDataSource create(Ref ref) {
    return remotePostsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemotePostsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemotePostsDataSource>(value),
    );
  }
}

String _$remotePostsDataSourceHash() =>
    r'a7d98b50bc2940e00b99a19ecbdb6ae61a5b99bd';
