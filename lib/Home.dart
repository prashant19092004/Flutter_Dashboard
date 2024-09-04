

import 'package:flutter/material.dart';
import 'package:test3/chapters.dart';
import 'package:test3/subjects.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Stack(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFF56D7C5),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                )
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context,false);
                          },
                            child: const Icon(Icons.arrow_back, color: Colors.white)
                        ),
                        const SizedBox(width: 8.0),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Find Your Courses',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Especially For You',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Top picks in courses and many topics',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                // Placeholder for the image, replace with an actual image in production
                                Container(
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: const DecorationImage(
                                      image: NetworkImage('https://img.lovepik.com/element/45006/4314.png_860.png')
                                    )
                                  ),
                                  // child: Center(child: Text("Image Placeholder")),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Topics',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,MaterialPageRoute(builder: (context) => Subjects()),);
                            },
                              child: topicCard('Subjects', Icons.book,)
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => Chapters()),);
                              },
                              child: topicCard('Chapters', Icons.assignment,)
                          ),
                          topicCard('Quiz', Icons.quiz),
                          topicCard('Library', Icons.library_books),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topicCard(String title, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40.0, color: const Color(0xFF56D7C5)),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
