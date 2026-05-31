import 'package:flutter/material.dart';

// ---------------------------------------------------------
// MaterialApp & Scaffold Tutorial
// ---------------------------------------------------------

// You can ignore this main function since we are launching from main.dart
void main() {
  runApp(const MyApp());
}

// MyApp is a basic starting point if you ran this file directly.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the outer shell of your app. It gives you 
    // material design features, navigation, and a theme.
    return MaterialApp(
      title: 'Flutter Basics',       // The title of your app
      debugShowCheckedModeBanner: false, // This removes the "DEBUG" banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomeScreen(),      // The first screen to show
    );
  }
}

// HomeScreen is where we build the actual user interface.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual structure for a screen.
    // It acts like a skeleton where you can add top bars, bottom buttons, etc.
    return Scaffold(
      // AppBar is the top navigation bar of the screen.
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue,
      ),

      // body is the main content area in the middle of the screen.
      // We use Center to make sure the text is exactly in the middle.
      body: const Center(
        child: Text('Hello Flutter!'),
      ),

      // floatingActionButton is the circular button usually found at the bottom right.
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // What happens when you tap the button (currently nothing)
        child: const Icon(Icons.add), // The plus icon inside the button
      ),
    );
  }
}
