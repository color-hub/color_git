import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.orange,
            width: 254,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Icon(Icons.abc),
                      SizedBox(width: 8),
                      Text("Test"),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: const [
                      Icon(Icons.abc),
                      SizedBox(width: 8),
                      Text("Test"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Flexible(child: TestPage()),
        ],
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test")),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Open repo"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Clone repo"),
          ),
        ],
      ),
    );
  }
}
