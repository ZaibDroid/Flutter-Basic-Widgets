import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Buttons Tutorial
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
      home: ButtonScreen(),
    );
  }
}

// ButtonScreen shows the different types of clickable buttons in Flutter.
class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── ELEVATED BUTTON ───
            // A button with a solid background and a slight shadow. Most common button.
            const Text('ElevatedButton', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            // A standard ElevatedButton
            ElevatedButton(
              onPressed: () {
                // This code runs when the button is tapped
                print('ElevatedButton tapped');
              },
              child: const Text('Click Me'),
            ),

            // An ElevatedButton with custom styling (colors, rounded edges, padding)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,     // Background color of the button
                foregroundColor: Colors.white,    // Text color of the button
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12), // Making it larger
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Less rounded corners
                ),
              ),
              child: const Text('Styled Button'),
            ),

            // If onPressed is set to 'null', the button becomes disabled (grayed out).
            ElevatedButton(
              onPressed: null,   // null = disabled
              child: const Text('Disabled Button'),
            ),

            const SizedBox(height: 20),

            // ─── TEXT BUTTON ───
            // A flat button with no background or shadow. Used for less important actions.
            const Text('TextButton', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            TextButton(
              onPressed: () {
                print('TextButton tapped');
              },
              child: const Text('Text Button'),
            ),

            const SizedBox(height: 20),

            // ─── OUTLINED BUTTON ───
            // A button with a transparent background but a visible border outline.
            const Text('OutlinedButton', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            OutlinedButton(
              onPressed: () {
                print('OutlinedButton tapped');
              },
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 20),

            // ─── ICON BUTTON ───
            // A circular button that only contains an icon (no text).
            const Text('IconButton', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Row(
              children: [
                IconButton(
                  onPressed: () { print('Heart tapped'); },
                  icon: const Icon(Icons.favorite, color: Colors.red),
                ),
                IconButton(
                  onPressed: () { print('Share tapped'); },
                  icon: const Icon(Icons.share, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () { print('Delete tapped'); },
                  icon: const Icon(Icons.delete, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ─── BUTTON WITH ICON + TEXT ───
            // You can also create buttons that have both an icon and text side-by-side.
            // You use the `.icon()` method for this.
            const Text('Button with Icon + Text', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download), // The icon to display
              label: const Text('Download'),    // The text to display next to the icon
            ),

          ],
        ),
      ),
    );
  }
}
