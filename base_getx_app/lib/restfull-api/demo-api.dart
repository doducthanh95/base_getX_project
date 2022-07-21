import 'package:base_getx_app/restfull-api/api-controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DemoApiPage extends StatelessWidget {
  const DemoApiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ApiController>(
        initState: (state) {},
        dispose: (state) {},
        init: Get.put(ApiController()),
        builder: (s) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Api'),
            ),
            body: Center(child: Text(s.text.value)),
            floatingActionButton: FloatingActionButton(onPressed: () {
              s.text.value = 'aaaaa';
            }),
          );
        });
  }
}
