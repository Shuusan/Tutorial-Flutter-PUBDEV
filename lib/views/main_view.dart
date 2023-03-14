import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pub_dev_collection/views/getx_view.dart';

import '../const/pub_dev_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * .175,
                decoration: const BoxDecoration(
                  color: Color(0xfff1f3f4),
                ),
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [Color(0xff8dcec5), Color(0xfff7f9f9), Color(0xfffafafa)],
                      stops: [0.0, 0.765, 1.0],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 790,
              height: Get.height - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                gradient: const LinearGradient(
                  begin: Alignment(0.0, -0.78),
                  end: Alignment(0.0, 0.85),
                  colors: [Color(0xffffffff), Color(0xfffafafa)],
                  stops: [0.0, 1.0],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "PUB DEV KATALOG",
                      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Pub dev satu untuk semua!\nKumpulan library Pubdev untuk memudahkan membuat aplikasi dengan Flutter",
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: listPubDev.length,
                      prototypeItem: UnconstrainedBox(
                        child: SizedBox(
                          width: Get.width * .45,
                          height: Get.height * .4,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        return UnconstrainedBox(
                          child: SizedBox(
                            width: Get.width * .45,
                            height: Get.height * .4,
                            child: ElevatedButton(
                                onPressed: () {
                                  Get.to(const GetXVIew());
                                },
                                style: ElevatedButton.styleFrom(),
                                child: Center(
                                  child: Text(listPubDev[index]),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // SizedBox(
        //   width: Get.width,
        //   height: Get.height,
        //   child: Column(
        //     children: [
        //       const Center(
        //         child: Text("KUMPULAN PUB DEV LIBRARY"),
        //       ),
        //       Expanded(
        //         child: ListView.builder(
        //           itemCount: listPubDev.length,
        //           prototypeItem: UnconstrainedBox(
        //             child: SizedBox(
        //               width: Get.width * .8,
        //               height: Get.height * .1,
        //             ),
        //           ),
        //           itemBuilder: (context, index) {
        //             return UnconstrainedBox(
        //               child: SizedBox(
        //                 width: Get.width * .8,
        //                 height: Get.height * .1,
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     Get.to(const GetXVIew());
        //                   },
        //                   child: Center(
        //                     child: Text(listPubDev[index]),
        //                   ),
        //                 ),
        //               ),
        //             );
        //           },
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
