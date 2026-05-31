import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Container Tutorial
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
      home: ContainerScreen(),
    );
  }
}

// ContainerScreen shows how to draw boxes using the Container widget.
// Think of a Container like a <div> in HTML.
class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // 1. A very basic container with a fixed size and background color.
            Container(
              width: 200, // 200 pixels wide
              height: 100, // 100 pixels tall
              color: Colors.blue, // Blue background color
            ),

            const SizedBox(height: 20),

            // 2. A container with padding (space INSIDE the box).
            Container(
              width: double.infinity,   // Stretches to take up all available horizontal space
              padding: const EdgeInsets.all(16),   // 16 pixels of space inside the box on all sides
              color: Colors.green,
              child: const Text(
                'Container with padding',
                style: TextStyle(color: Colors.white), // White text so we can read it on green
              ),
            ),

            const SizedBox(height: 20),

            // 3. A container with complex decoration like rounded corners and a border.
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 20),  // Space OUTSIDE the box on the left and right
              // BoxDecoration lets you style the box
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),  // Gives the box rounded corners
                border: Border.all(
                  color: Colors.red, // The color of the outline
                  width: 2,          // The thickness of the outline
                ),
              ),
              // Center puts the text exactly in the middle of the box
              child: const Center(
                child: Text(
                  'Rounded Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 4. A container with a drop shadow effect.
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                // boxShadow allows you to add multiple shadows to the box
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Semi-transparent grey shadow
                    spreadRadius: 2,  // How far the shadow spreads
                    blurRadius: 8,    // How blurry the shadow edges are
                    offset: const Offset(0, 4),   // Moves the shadow 4 pixels downwards
                  ),
                ],
              ),
              child: const Center(
                child: Text('Container with shadow'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
