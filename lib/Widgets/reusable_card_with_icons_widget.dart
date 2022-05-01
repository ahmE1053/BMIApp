import 'package:flutter/material.dart';

class ReusableCardWithIcons extends StatelessWidget {
  const ReusableCardWithIcons(this._title, this._iconData);
  final String _title;
  final IconData _iconData;
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context);
    return mediaQ.orientation == Orientation.portrait
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _iconData,
                size: 60,
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              FittedBox(
                child: Text(
                  _title,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          )
        : Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _iconData,
                  size: 60,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                FittedBox(
                  child: Text(
                    _title,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
