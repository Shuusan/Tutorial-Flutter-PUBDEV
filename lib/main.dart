import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pub_dev_collection/views/main_view.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(589.0, 788.0),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    //await windowManager.setResizable(false);
    //await windowManager.setAlwaysOnTop(true);
    await windowManager.setPosition(const Offset(1323.0, 78.0));
    await windowManager.focus();
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(
        body: MainView(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () async => print((await windowManager.getSize()).toString()),
        // ),
      ),
    );
  }
}
