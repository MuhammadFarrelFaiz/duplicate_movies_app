// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WatchHistory)
const watchHistoryProvider = WatchHistoryProvider._();

final class WatchHistoryProvider
    extends $NotifierProvider<WatchHistory, List<Movie>> {
  const WatchHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchHistoryHash();

  @$internal
  @override
  WatchHistory create() => WatchHistory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Movie> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Movie>>(value),
    );
  }
}

String _$watchHistoryHash() => r'6adb5290f90857f00ce41ee313b78652b7a85568';

abstract class _$WatchHistory extends $Notifier<List<Movie>> {
  List<Movie> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Movie>, List<Movie>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Movie>, List<Movie>>,
              List<Movie>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
