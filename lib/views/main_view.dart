import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              width: MediaQuery.of(context).size.width * .85,
              height: MediaQuery.of(context).size.height - 40,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Kumpulan library Pubdev untuk memudahkan membuat aplikasi dengan Flutter",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: listPubDev.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width * .065,
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * .225,
                                      height: MediaQuery.of(context).size.height * .29,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: const Color(0xffbcc0b9),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x29000000),
                                            offset: Offset(0, 6),
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => Get.to(const GetXVIew()),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * .35,
                                      height: MediaQuery.of(context).size.height * .285,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        gradient: const RadialGradient(
                                          center: Alignment(0.0, 0.0),
                                          radius: 1.783,
                                          colors: [Color(0xff889672), Color(0xff708258)],
                                          stops: [0.0, 1.0],
                                          transform: GradientXDTransform(-0.713, -0.701, 0.2, -0.203, 0.757, 0.952, Alignment(0.0, 0.0)),
                                        ),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x29000000),
                                            offset: Offset(0, 6),
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15.0),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width * .15,
                                                height: MediaQuery.of(context).size.width * .15,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: const Color(0xfffeffff),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color(0x29000000),
                                                      offset: Offset(0, 10),
                                                      blurRadius: 10,
                                                    ),
                                                  ],
                                                ),
                                                child: const Center(
                                                  child: FaIcon(FontAwesomeIcons.gears),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 30.0),
                                              child: Text(
                                                listPubDev[index]["title"].toString(),
                                                style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 140.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  listPubDev[index]["description"].toString(),
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      GoogleFonts.poppins(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
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
