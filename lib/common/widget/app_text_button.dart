import 'package:flutter/material.dart';

import '../../core/app_styles.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final Function() onPress;

  const AppTextButton({
    required this.title,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: kSecondColor,
        foregroundColor: kSecondColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: headLine3.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
