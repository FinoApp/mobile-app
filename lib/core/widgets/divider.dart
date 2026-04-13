import 'package:flutter/material.dart';

class CastomDivider extends StatelessWidget {
  final double left;
  final double right;

  const CastomDivider({super.key, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: left, right: right),
      child: Container(height: 1, color: Colors.black12),
    );
  }
}
