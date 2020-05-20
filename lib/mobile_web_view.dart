library mobile_web_view;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_web_view/src/mobile_frame.dart';

class MobileWebView extends StatelessWidget {
  const MobileWebView({
    Key key,
    @required this.child,
    this.content = const SizedBox.expand(),
    this.statusBarIconColor = Colors.black87,
  }) : super(key: key);

  /// It is your main app that will show up under the mobile frame
  /// and on mobile screen(if on mobile)
  final Widget child;

  /// Content is the widget that is show on the right side
  ///
  /// [defaut is SizedBox.expand() ]
  final Widget content;

  /// This will set the color for status icons
  ///
  /// [defaut is black]
  final Color statusBarIconColor;
  @override
  Widget build(BuildContext context) {
    if (kIsWeb && MediaQuery.of(context).size.width > 600)
      return Material(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FittedBox(
                  child: MobileFrame(
                    child: child,
                    iconColor: statusBarIconColor,
                  ),
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
