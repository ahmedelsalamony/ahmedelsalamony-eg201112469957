import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_router/routes.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go(Routes.kOnboardingScreen);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: const Center(child: Text("Not Found Screen")),
    );
  }
}
