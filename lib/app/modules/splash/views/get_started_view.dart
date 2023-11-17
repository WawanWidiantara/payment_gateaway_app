import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetStartedView extends GetView {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetStartedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GetStartedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
