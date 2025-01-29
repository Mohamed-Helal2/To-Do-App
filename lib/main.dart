import 'package:flutter/material.dart';
import 'package:todoapp/app/app.dart';
import 'package:todoapp/core/database/cache/cach_helper.dart';
import 'package:todoapp/core/service/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await sl<CacheHelper>().init();
  runApp(const MyApp());
}
