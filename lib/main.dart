import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pub_dev_collection/views/main_view.dart';

import 'views/getx_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(body: MainView()),
    );
  }
}
