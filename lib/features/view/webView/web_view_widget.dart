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
      allowsInlineMediaPlayback: true,
      debuggingEnabled: false,
      initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
      initialUrl: "https://cutiepie.gameontech.co.uk/",
      onWebViewCreated: (WebViewController webviewcontroller) {
        try {} catch (error, stackTrace) {
          print('$error');
        }
      },
      // onWebViewCreated: (WebViewController webViewController) {
      //   controller.complete(webViewController);
      // },
      javascriptChannels: Set.from([
        JavascriptChannel(
          name: "flutter",
          onMessageReceived: (JavascriptMessage message) {
            if (message.message == "onSubscribeClick") {
              print("onSubscribeClick");
            }
          },
        )
      ]),
      onWebResourceError: (websourceerror) {
        print("=> onWebResourceError " + websourceerror.domain.toString());
      },
      gestureNavigationEnabled: true,
      onProgress: (int progress) {
        print('WebView is loading (progress : $progress%)');
      },
      onPageFinished: (String url) {
        print('Page finished loading: $url');
      },
    );
  }
}
