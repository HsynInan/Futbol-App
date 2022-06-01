import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HaberDetails extends StatefulWidget {
  final String url;
  HaberDetails({Key key, this.url}) : super(key: key);

  @override
  _HaberDetailsState createState() => _HaberDetailsState();
}

String url;

class _HaberDetailsState extends State<HaberDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Deneme haber"),
        ),
        body: WebView(
          initialUrl: "${widget.url}",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
