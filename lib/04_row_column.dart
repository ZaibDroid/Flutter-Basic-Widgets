import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Row & Column Tutorial
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
      home: RowColumnScreen(),
    );
  }
}

// RowColumnScreen shows how to place things side-by-side (Row) or top-to-bottom (Column).
class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row & Column')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── ROW WIDGET ───
            // Rows place their children horizontally from left to right.
            const Text('Row → Horizontal', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            // 1. A basic row with three colored boxes touching each other.
            Row(
              children: [
                Container(width: 60, height: 60, color: Colors.red),
                Container(width: 60, height: 60, color: Colors.green),
                Container(width: 60, height: 60, color: Colors.blue),
              ],
            ),

            const SizedBox(height: 16),

            // 2. A row that spreads its children out.
            const Text('Row → SpaceBetween'),
            const SizedBox(height: 8),
            Row(
              // mainAxisAlignment controls how children are spaced along the main axis.
              // For a Row, the main axis is horizontal.
              // SpaceBetween pushes the first item to the far left, the last to the far right,
              // and spaces the rest evenly in between.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 60, height: 60, color: Colors.red),
                Container(width: 60, height: 60, color: Colors.green),
                Container(width: 60, height: 60, color: Colors.blue),
              ],
            ),

            const SizedBox(height: 16),

            // 3. A row that centers all its children.
            const Text('Row → Center'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Clump them in the middle
              children: [
                Container(width: 60, height: 60, color: Colors.red),
                const SizedBox(width: 10), // Adding gap between items manually
                Container(width: 60, height: 60, color: Colors.green),
                const SizedBox(width: 10),
                Container(width: 60, height: 60, color: Colors.blue),
              ],
            ),

            const SizedBox(height: 30),

            // ─── COLUMN WIDGET ───
            // Columns place their children vertically from top to bottom.
            const Text('Column → Vertical', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            // A column where children are aligned to the left.
            Column(
              // crossAxisAlignment controls alignment on the opposite axis.
              // For a Column, the opposite axis is horizontal.
              // 'start' means align to the left side.
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 200, height: 40, color: Colors.red),
                const SizedBox(height: 8),
                Container(width: 150, height: 40, color: Colors.green),
                const SizedBox(height: 8),
                Container(width: 100, height: 40, color: Colors.blue),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
