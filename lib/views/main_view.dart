import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pub_dev_collection/const/pub_dev_list.dart';

import 'getx_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: Colors.pinkAccent,
      child: Column(
        children: [
          const Center(
            child: Text("KUMPULAN PUB DEV LIBRARY"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listPubDev.length,
              prototypeItem: SizedBox(
                width: Get.width * .8,
                height: Get.height * .1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(),
                ),
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: Get.width * .8,
                  height: Get.height * .1,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const GetXVIew());
                    },
                    child: Center(
                      child: Text(listPubDev[index]),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
