import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Center, Padding & SizedBox Tutorial
// ---------------------------------------------------------

// You can ignore this main function since we are launching from main.dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpacingScreen(),
    );
  }
}

// SpacingScreen shows how to position things and create empty space.
class SpacingScreen extends StatelessWidget {
  const SpacingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center, Padding & SizedBox')),
      body: Column(
        children: [

          // ─── CENTER WIDGET ───
          // The Center widget takes its child and puts it exactly in the middle 
          // of the space it has available.
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue.shade50,
            child: const Center(          // Automatically centers the text inside the blue box
              child: Text(
                'I am centered!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // ─── PADDING WIDGET ───
          // Padding adds empty space AROUND the widget inside it.
          // This creates a breathing room between the widget and its surroundings.

          // Example 1: No padding (the text touches the edges of the box)
          Container(
            color: Colors.red.shade100,
            child: const Text('No Padding'),
          ),

          const SizedBox(height: 10),

          // Example 2: Padding on all sides equally
          Container(
            color: Colors.green.shade100,
            child: const Padding(
              padding: EdgeInsets.all(16),    // Adds 16 pixels of space on Top, Bottom, Left, and Right
              child: Text('Padding all sides (16)'),
            ),
          ),

          const SizedBox(height: 10),

          // Example 3: Padding only on specific sides
          Container(
            color: Colors.orange.shade100,
            child: const Padding(
              padding: EdgeInsets.only(left: 32, top: 8, bottom: 8), // More space on left, little on top/bottom
              child: Text('Padding only left (32)'),
            ),
          ),

          const SizedBox(height: 20),

          // ─── SIZEDBOX WIDGET ───
          // SizedBox is basically an invisible empty box with a specific width and height.
          // We use it all the time to create gaps between other widgets.
          const Text('SizedBox as spacing:'),

          const SizedBox(height: 30),   // Creates a 30-pixel vertical gap

          Container(width: 100, height: 50, color: Colors.purple),

          const SizedBox(height: 10),   // Creates a 10-pixel vertical gap

          Container(width: 100, height: 50, color: Colors.teal),

          // SizedBox can also be used to force a widget to be a specific size.
          const SizedBox(
            width: 200, // Forces the yellow box to be exactly 200 pixels wide
            height: 60, // Forces the yellow box to be exactly 60 pixels tall
            child: ColoredBox(
              color: Colors.amber,
              child: Center(child: Text('Fixed SizedBox')),
            ),
          ),

        ],
      ),
    );
  }
}
