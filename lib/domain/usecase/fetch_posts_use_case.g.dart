// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_posts_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchPostsUseCase)
final fetchPostsUseCaseProvider = FetchPostsUseCaseProvider._();

final class FetchPostsUseCaseProvider
    extends
        $FunctionalProvider<
          FetchPostsUseCase,
          FetchPostsUseCase,
          FetchPostsUseCase
        >
    with $Provider<FetchPostsUseCase> {
  FetchPostsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchPostsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchPostsUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchPostsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchPostsUseCase create(Ref ref) {
    return fetchPostsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchPostsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchPostsUseCase>(value),
    );
  }
}

String _$fetchPostsUseCaseHash() => r'b85100495fc5686ba549178f333cc9ca3140e7f9';
