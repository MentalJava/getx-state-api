import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_api/controller/controller.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chef Shop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.view_list_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: controller.productList.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
              );
            },
          ),
        ),
      ),
    );
  }
}
