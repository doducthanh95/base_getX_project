import 'package:base_getx_app/custom-theme.dart';
import 'package:base_getx_app/restfull-api/demo-api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(),
      darkTheme: ,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  //action change theme

                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                  // Get.changeThemeMode(
                  //     Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                },
                child: Text('Change theme')),
            ElevatedButton(
                onPressed: () {
                  //action change theme
                },
                child: Text('Change Language')),
            ElevatedButton(
                onPressed: () {
                  //action change theme
                  Get.to(DemoApiPage());
                },
                child: Text('Example call API'))
          ],
        ),
      ),
    );
  }
}
