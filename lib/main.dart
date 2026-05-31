import 'package:flutter/material.dart';

// Importing the individual screens from each tutorial file.
// We use the `show` keyword to ONLY import the specific widget we need,
// which prevents conflicts since many of these files also define `MyApp` and `main()`.
import '01_materialapp_scaffold.dart' show HomeScreen;
import '02_text_icon.dart' show TextIconScreen;
import '03_container.dart' show ContainerScreen;
import '04_row_column.dart' show RowColumnScreen;
import '05_center_padding_sizedbox.dart' show SpacingScreen;
import '06_buttons.dart' show ButtonScreen;
import '07_image.dart' show ImageScreen;
import '08_appbar.dart' show AppBarScreen;

// The main entry point of the application.
// This function is the first thing that runs when the app starts.
void main() {
  runApp(const MainApp());
}

// MainApp is the root widget of the entire application.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides material design styling and navigation features.
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      // This hides the red "DEBUG" banner in the top right corner.
      debugShowCheckedModeBanner: false,
      // The overall theme of the app (colors, fonts, etc.)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // The first screen that will be shown when the app loads.
      home: const MainNavigationScreen(),
    );
  }
}

// MainNavigationScreen displays a list of all the basic widget tutorials.
class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // A list of maps containing the title of the tutorial and the actual screen widget.
    final screens = [
      {'title': '01. MaterialApp & Scaffold', 'screen': const HomeScreen()},
      {'title': '02. Text & Icon', 'screen': const TextIconScreen()},
      {'title': '03. Container', 'screen': const ContainerScreen()},
      {'title': '04. Row & Column', 'screen': const RowColumnScreen()},
      {'title': '05. Center, Padding & SizedBox', 'screen': const SpacingScreen()},
      {'title': '06. Buttons', 'screen': const ButtonScreen()},
      {'title': '07. Image', 'screen': const ImageScreen()},
      {'title': '08. AppBar', 'screen': const AppBarScreen()},
    ];

    // Scaffold provides the basic visual layout structure of the screen.
    return Scaffold(
      // AppBar is the top navigation bar of the screen.
      appBar: AppBar(
        title: const Text('Flutter Basic Widgets'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // ListView.builder efficiently creates a scrollable list of widgets on demand.
      body: ListView.builder(
        itemCount: screens.length, // Number of items in the list.
        itemBuilder: (context, index) {
          // Card adds a nice shadow and rounded corners around each item.
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // ListTile is a pre-configured layout often used in lists (with title, subtitle, leading, trailing).
            child: ListTile(
              // The text shown for this specific list item.
              title: Text(
                screens[index]['title'] as String,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              // An arrow icon shown on the right side of the list item.
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              // onTap is triggered when the user taps on this item.
              onTap: () {
                // Navigator handles transitions between different screens (routes).
                // Here we push a new route onto the stack to navigate to the selected tutorial screen.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screens[index]['screen'] as Widget,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}