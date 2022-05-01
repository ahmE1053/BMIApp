import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? widget;
  final Function? function;
  const ReusableCard({required this.color, this.widget, this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function!();
      },
      child: Container(
        // color: Color(0xFF1D1E33),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: widget,
      ),
    );
  }
}
