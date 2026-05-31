import 'package:flutter/material.dart';

// ---------------------------------------------------------
// AppBar Tutorial
// ---------------------------------------------------------

// You can ignore this main function since we are launching from main.dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppBarScreen(),
      // 'routes' defines named paths for navigation (used if you run this file directly)
      routes: {
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

// AppBarScreen shows how to customize the top navigation bar of a screen.
class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ─── FULL APPBAR EXAMPLE ───
      // The AppBar is the top colored bar you see in almost every app.
      appBar: AppBar(
        // title: What text to show in the bar
        title: const Text('My App'),
        centerTitle: true,               // Forces the title text to be exactly in the middle

        // Colors
        backgroundColor: Colors.blue,    // The background color of the bar
        foregroundColor: Colors.white,   // The color of the text and icons inside the bar

        // leading: The widget on the far LEFT side of the bar
        // (If you don't provide this, Flutter automatically adds a back button when navigating!)
        leading: IconButton(
          icon: const Icon(Icons.menu),   // A hamburger menu icon
          onPressed: () {
            print('Menu tapped');
          },
        ),

        // actions: A list of widgets on the far RIGHT side of the bar
        actions: [
          IconButton(
            icon: const Icon(Icons.search), // A magnifying glass icon
            onPressed: () { print('Search tapped'); },
          ),
          IconButton(
            icon: const Icon(Icons.notifications), // A bell icon
            onPressed: () { print('Notifications tapped'); },
          ),
        ],

        // elevation: Adds a drop shadow underneath the AppBar so it looks slightly raised
        elevation: 4,   
      ),

      // Main content of the screen
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop the current route off the navigator stack.
            // This destroys this current screen and reveals the previous screen underneath it (the Main Menu).
            Navigator.pop(context);
          },
          child: const Text('Go back to Main Screen'),
        ),
      ),
    );
  }
}

// SecondScreen is just an example of another page.
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        // Notice we didn't add 'leading' here.
        // Because we navigated to this screen, Flutter automatically puts a Back Arrow in the leading spot!
      ),
      body: const Center(
        child: Text('This is the second screen'),
      ),
    );
  }
}
