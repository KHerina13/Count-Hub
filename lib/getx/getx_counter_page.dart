import 'package:counter/getx/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Make sure the CounterController file is imported

class GetxCounterPage extends StatelessWidget {
  const GetxCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure the controller is initialized once.
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                'Count: ${controller.count}',
                style: TextStyle(
                  fontSize: 40, // Larger font size
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple,
                ),
              );
            }),
            const SizedBox(height: 40),
            // Add a nice description below the counter value
            const Text(
              "Tap the button to increase the count",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
