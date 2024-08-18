import 'package:flutter/material.dart';
import '../../core/app_assets.dart';
import '../../core/app_styles.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            AppAssets.emptyState,
            fit: BoxFit.scaleDown,
          ),
          Text(message, style: headLine1),
        ],
      ),
    );
  }
}
