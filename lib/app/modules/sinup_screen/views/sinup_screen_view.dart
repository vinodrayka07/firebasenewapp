import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sinup_screen_controller.dart';

class SinupScreenView extends GetView<SinupScreenController> {
  const SinupScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SinupScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SinupScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
