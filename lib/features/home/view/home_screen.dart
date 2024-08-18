import 'package:eg201112469957/common/widget/horizontal_spacer.dart';
import 'package:eg201112469957/common/widget/vertical_spacer.dart';
import 'package:eg201112469957/core/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/app_router/routes.dart';
import '../../../core/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box(AppStrings.kHiveBoxName);
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: kSecondColor,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home Page",
                style: k18RegularTextStyle.copyWith(color: Colors.black),
              ),
              Text(
                box.get(AppStrings.kFirstName),
                style: k16MediumTextStyle.copyWith(color: Colors.black54),
              )
            ],
          ),
        ),
        body: InkWell(
          onTap: () {
            context.goNamed(Routes.kGrades);
          },
          child: Container(
            margin: const EdgeInsets.all(12),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kIconBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/desk.png',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        const HorizontalSpacer(width: 16),
                        Text(
                          'Grades',
                          style: k18RegularTextStyle.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
