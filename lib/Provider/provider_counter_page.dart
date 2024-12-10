import 'package:counter/Provider/provider_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounterPage extends StatefulWidget {
  const ProviderCounterPage({super.key});

  @override
  State<ProviderCounterPage> createState() => _ProviderCounterPageState();
}

class _ProviderCounterPageState extends State<ProviderCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Counter",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Displaying the counter value with some styling
            Consumer<CounterProvider>(
              builder: (context, provider, _) {
                return Text(
                  "Count: ${provider.count}",
                  style: TextStyle(
                    fontSize: 40, // Larger font size
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                );
              },
            ),
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
          context.read<CounterProvider>().increment(); // Increment the counter
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
