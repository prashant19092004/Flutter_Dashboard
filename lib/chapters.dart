

import 'package:flutter/material.dart';


class Chapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF56D7C5), // Light background color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context,false);
          },
        ),
        title: const Text(
          'Chapter List',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar and grid/list toggle button
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for subjects',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF00ACC1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.grid_view, color: Colors.white),
                    onPressed: () {
                      // Handle grid/list toggle button press
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // List of chapters
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return ChapterListItem(
                    number: index + 1,
                    title: 'Chapter Title ${index + 1}',
                    subtitle: '30 mins',
                    isLocked: index % 2 == 1, // Locks every other item for demo
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterListItem extends StatelessWidget {
  final int number;
  final String title;
  final String subtitle;
  final bool isLocked;

  ChapterListItem({
    required this.number,
    required this.title,
    required this.subtitle,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF56D7C5),
          child: Text(
            '$number',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: isLocked ? const Icon(Icons.lock, color: Colors.grey) : null,
      ),
    );
  }
}

