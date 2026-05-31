import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Text & Icon Tutorial
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
      home: TextIconScreen(),
    );
  }
}

// TextIconScreen shows how to use Text and Icon widgets.
class TextIconScreen extends StatelessWidget {
  const TextIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text & Icon')),
      
      // Padding adds space around the edges so the content doesn't touch the screen borders.
      body: const Padding(
        padding: EdgeInsets.all(16), // 16 pixels of space on all sides
        
        // Column stacks widgets vertically (one on top of another).
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align everything to the left side
          children: [

            // ─── TEXT WIDGET ───

            // A basic text widget displaying a simple string.
            Text('Hello Flutter!'),

            // SizedBox adds vertical space (gap) between widgets.
            SizedBox(height: 10),

            // A text widget with custom styling.
            Text(
              'Styled Text',
              style: TextStyle(
                fontSize: 24,           // Make the font bigger
                fontWeight: FontWeight.bold, // Make the text thick and bold
                color: Colors.blue,     // Change text color to blue
                letterSpacing: 2,       // Add space between each letter
              ),
            ),

            SizedBox(height: 10),

            // A text widget that handles long text gracefully.
            Text(
              'This is a very long text that will be cut off after two lines with an ellipsis at the end of the text.',
              maxLines: 2, // Only allow up to 2 lines of text
              overflow: TextOverflow.ellipsis,  // Show '...' if the text is too long
            ),

            SizedBox(height: 30),

            // ─── ICON WIDGET ───

            // A basic icon showing a home symbol.
            Icon(Icons.home),

            SizedBox(height: 10),

            // An icon with custom color and size.
            Icon(
              Icons.favorite,
              color: Colors.red,   // Make the heart red
              size: 40,            // Make the icon larger
            ),

            SizedBox(height: 10),

            // Row places widgets horizontally (side-by-side).
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 10), // Horizontal space between icons
                Icon(Icons.email),
                SizedBox(width: 10),
                Icon(Icons.settings),
                SizedBox(width: 10),
                Icon(Icons.person),
                SizedBox(width: 10),
                Icon(Icons.search),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
