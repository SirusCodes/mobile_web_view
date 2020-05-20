import 'package:flutter/material.dart';

class MobileFrame extends StatelessWidget {
  const MobileFrame({Key key, @required this.child, @required this.color})
      : super(key: key);
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: AspectRatio(
        aspectRatio: 9 / 20,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: StatusBar(color: color),
                  ),
                  Expanded(
                    flex: 30,
                    child: child,
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
  const StatusBar({Key key, @required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    final _time = DateTime.now();
    return Material(
      child: Container(
        height: 30,
        color: color,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "${_time.hour}:${_time.minute}",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.network_cell,
              size: 15,
            ),
            Icon(
              Icons.battery_full,
              size: 15,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
