/* This all foe Row-2 element 
-->Result Page
-->InternalmarkPage
-->DE Login Page
--> Syllabus Page
 */

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'LoadingIndicator.dart';

class Row_Element_2 extends StatefulWidget {
  final String url;

  const Row_Element_2({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<Row_Element_2> createState() => _Row_Element_2State(this.url);
}

class _Row_Element_2State extends State<Row_Element_2> {
  final String url;
  _Row_Element_2State(this.url);

  //for indicatroe (Loader)
  bool isLoading = true;
  final _key = UniqueKey();

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          WebView(
            key: _key,
            initialUrl: this.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Container(child: LoadingIndicator()) : Stack(),
        ],
      ),
    );
  }
}
