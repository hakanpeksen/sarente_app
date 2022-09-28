part of web_view;

class _WebViewWidget extends StatelessWidget {
  const _WebViewWidget({
    Key? key,
    required this.url,
    required this.controller,
  }) : super(key: key);

  final String url;
  final Completer<WebViewController> controller;

  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        controller.complete(webViewController);
      },
      onProgress: (int progress) {
        print('WebView is loading (progress : $progress%)');
      },
    );
  }
}
