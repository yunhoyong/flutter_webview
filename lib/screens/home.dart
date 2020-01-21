import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  static final links1 = [['Google','https://google.com'],['Naver','https://naver.com'],['Daum','https://daum.net']];
  static final links2 = [['Apple','https://apple.com'],['Yahoo','https://yahoo.com'],['Microsoft','https://www.microsoft.com/']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: links1.map((link) => _urlButton(context, link)).toList(),
                )
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: links2.map((link) => _urlButton(context, link)).toList(),
                )
              )
            ],
          ));
  }

  Widget _urlButton(BuildContext context, List<String> url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Text(url[0]),
          onPressed: () => _handleURLButtonPress(context, url[1]),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
