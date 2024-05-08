import 'dart:async';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/navigation_state.dart';

part 'web_view_state.freezed.dart';
part 'web_view_state.g.dart';

@freezed
class WebViewStateData with _$WebViewStateData {
  const factory WebViewStateData({
    WebUri? url,
  }) = _WebViewStateData;
}

@Riverpod(keepAlive: true)
class WebViewState extends _$WebViewState {
  InAppWebViewController? _controller;

  @override
  WebViewStateData build() => const WebViewStateData();

  void setController(InAppWebViewController controller) =>
      _controller = controller;

  Future<void> scrollToTop() async {
    await _controller?.scrollTo(x: 0, y: 0, animated: true);
  }

  void updateUrl(WebUri? url) {
    state = state.copyWith(url: url);
  }

  Future<WebUri?> getUrl() async {
    return state.url ?? await _controller?.getUrl();
  }

  Future<void> go(String url, {bool branch = true}) async {
    void goBranch() => branch
        ? ref.read(navigationStateProvider.notifier).goBranch(BranchType.web)
        : null;
    if (_controller == null) {
      updateUrl(WebUri(url));
      goBranch();
    } else {
      goBranch();
      await load(url);
    }
  }

  Future<void> goBack() async {
    await _controller?.goBack();
  }

  Future<void> goForward() async {
    await _controller?.goForward();
  }

  Future<void> reload() async {
    await _controller?.reload();
  }

  Future<void> loadRequest(URLRequest request) async {
    await _controller?.loadUrl(urlRequest: request);
  }

  Future<void> load(String url) async {
    await loadRequest(URLRequest(url: WebUri(url)));
  }
}
