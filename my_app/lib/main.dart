import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 MaterialApp: The root widget that defines the app's theme and navigation.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: Provides the high-level structure with slots for an AppBar and body.
    appBar: AppBar(title: const Text('All Widgets')), // #3 AppBar: A toolbar widget typically displayed at the top of the app.
    body: Center( // #7 Center: A layout widget that aligns its single child in the middle.
      child: Container( // #8 Container: A versatile widget for styling, adding padding, or setting dimensions.
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column: A layout widget that displays its children in a vertical array.
          children: [
            Row( // #5 Row: A layout widget that displays its children in a horizontal array.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text: A widget that displays a string or text with a single style.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}