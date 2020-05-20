library mobile_web_view;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_web_view/src/mobile_frame.dart';

class MobileWebView extends StatelessWidget {
  const MobileWebView({
    Key key,
    @required this.child,
    this.content = const SizedBox.expand(),
    @required this.statusBarColor,
  }) : super(key: key);

  final Widget child, content;
  final Color statusBarColor;
  @override
  Widget build(BuildContext context) {
    if (kIsWeb && MediaQuery.of(context).size.width > 600)
      return Material(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: MobileFrame(
                  child: child,
                  color: statusBarColor,
                ),
              ),
            ),
            Expanded(child: content),
          ],
        ),
      );
    return child;
  }
}
