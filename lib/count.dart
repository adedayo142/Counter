import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => count.increment(),
              child: const Text(
                "+1",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "${count.counter}",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () => count.decrement(),
              child: const Text(
                "-1",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
