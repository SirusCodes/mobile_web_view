import 'package:flutter/material.dart';

class MobileFrame extends StatelessWidget {
  const MobileFrame({
    Key key,
    @required this.child,
    this.iconColor,
  }) : super(key: key);
  final Widget child;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQueryData(
      size: Size(69, 147),
      padding: EdgeInsets.only(
        top: 18,
      ),
      devicePixelRatio: 2,
    );

    return MediaQuery(
      data: mediaQuery,
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: SizedBox.fromSize(
          size: mediaQuery.size * 5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.black87, width: 15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  child,
                  Positioned(
                    child: StatusBar(
                      iconColor: iconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  const StatusBar({Key key, this.iconColor}) : super(key: key);
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    final _time = DateTime.now();
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 30,
        child: Row(
          children: <Widget>[
            SizedBox(width: 12),
            Text(
              "${_time.hour}:${_time.minute}",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: iconColor,
              ),
            ),
            Spacer(),
            Icon(Icons.network_cell, size: 15, color: iconColor),
            Icon(Icons.battery_full, size: 15, color: iconColor),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
