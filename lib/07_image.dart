import 'package:flutter/material.dart';

// ---------------------------------------------------------
// Image Tutorial
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
      home: ImageScreen(),
    );
  }
}

// ImageScreen shows how to display images from the internet and from local files.
class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Widget')),
      // SingleChildScrollView allows the screen to scroll if content is taller than the screen.
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── IMAGE FROM NETWORK ───
            // Image.network downloads and displays an image directly from an internet URL.
            const Text('Image.network', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Image.network(
              'https://picsum.photos/400/200',  // A random image URL
              width: double.infinity,           // Take up all horizontal space
              height: 200,                      // Exactly 200 pixels tall
              fit: BoxFit.cover,                // Stretches/crops the image so it perfectly fills the box
            ),

            const SizedBox(height: 20),

            // ─── NETWORK IMAGE WITH LOADING SPINNER ───
            // Sometimes internet is slow. We can show a loading spinner while the image downloads.
            const Text('Image with loading indicator', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Image.network(
              'https://picsum.photos/400/200?random=2',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
              // loadingBuilder runs while the image is downloading
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;  // If done, show the image (child)
                return const Center(
                  child: CircularProgressIndicator(),        // Show a spinner while loading
                );
              },
              // errorBuilder runs if the URL is broken or there is no internet
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.broken_image, size: 50), // Show a broken image icon on failure
                );
              },
            ),

            const SizedBox(height: 20),

            // ─── CIRCLE AVATAR (Profile Pictures) ───
            // A quick way to show an image in a perfect circle, great for user profiles!
            const Text('CircleAvatar', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Row(
              children: [
                // 1. CircleAvatar showing an image from the internet
                const CircleAvatar(
                  radius: 40, // How big the circle is
                  backgroundImage: NetworkImage('https://picsum.photos/100/100?random=3'),
                ),

                const SizedBox(width: 16),

                // 2. CircleAvatar showing just a solid color and an icon inside
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white, size: 40),
                ),

                const SizedBox(width: 16),

                // 3. CircleAvatar showing user initials (e.g., ZD for Zainab Doe)
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green.shade700,
                  child: const Text(
                    'ZD',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ─── BOXFIT EXAMPLES (How image fills the box) ───
            // Shows the difference between cover (crops) and contain (doesn't crop).
            const Text('BoxFit.cover vs BoxFit.contain', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Row(
              children: [
                Column(
                  children: [
                    const Text('cover', style: TextStyle(fontSize: 12)),
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.grey.shade200,
                      child: Image.network(
                        'https://picsum.photos/300/400?random=4',
                        fit: BoxFit.cover,  // Makes sure the box has NO empty space, but might cut off edges of image
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Column(
                  children: [
                    const Text('contain', style: TextStyle(fontSize: 12)),
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.grey.shade200,
                      child: Image.network(
                        'https://picsum.photos/300/400?random=4',
                        fit: BoxFit.contain,  // Makes sure the WHOLE image is visible, but might leave empty space in box
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ─── IMAGE FROM ASSETS (Local files) ───
            // Image.asset loads an image that is saved inside your project folders.
            // You first have to declare the image folder in the 'pubspec.yaml' file.
            const Text('Image.asset', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Image.asset(
              'assets/logo.png', // Loads the local logo image we created
              width: 150,
              height: 150,
            ),

          ],
        ),
      ),
    );
  }
}
