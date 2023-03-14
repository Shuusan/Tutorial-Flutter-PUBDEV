import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pub_dev_collection/controllers/home_controller.dart';

class GetXVIew extends GetView<HomeController> {
  const GetXVIew({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Get.back()),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text("Hello World : ${controller.obj}")),
          ElevatedButton(
              onPressed: () {
                controller.obj++;
              },
              child: const Center(child: Text("Tambah Satu")))
        ],
      )),
    );
  }
}
