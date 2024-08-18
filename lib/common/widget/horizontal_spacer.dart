import 'package:flutter/material.dart';

class HorizontalSpacer extends StatelessWidget {
  final double? width;
  const HorizontalSpacer({this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 16,
    );
  }
}
