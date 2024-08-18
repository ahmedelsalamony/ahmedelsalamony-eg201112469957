import 'package:eg201112469957/core/app_strings.dart';
import 'package:eg201112469957/di.dart';
import 'package:eg201112469957/task_app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  init();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppStrings.kHiveBoxName);
  runApp(const TaskApp());
}
