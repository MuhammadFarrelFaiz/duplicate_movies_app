// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Reviews)
const reviewsProvider = ReviewsProvider._();

final class ReviewsProvider extends $NotifierProvider<Reviews, List<Review>> {
  const ReviewsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewsHash();

  @$internal
  @override
  Reviews create() => Reviews();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Review> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Review>>(value),
    );
  }
}

String _$reviewsHash() => r'5113fd8bd6c7269bdcc34346640412d572f90426';

abstract class _$Reviews extends $Notifier<List<Review>> {
  List<Review> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Review>, List<Review>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Review>, List<Review>>,
              List<Review>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
