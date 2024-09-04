import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context,false);
              },
                child: const Icon(Icons.arrow_back, color: Colors.black)
            ),
          ),
          title: const Text(
            'Subjects',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              subjectCard('Electronics', Icons.electrical_services),
              subjectCard('Languages', Icons.language),
              subjectCard('Physics', Icons.science),
              subjectCard('Geographic', Icons.public),
              subjectCard('Maths', Icons.calculate),
              subjectCard('Chemistry', Icons.biotech),
              // Add more subjects here if needed
            ],
          ),
        ),
      ),
    );
  }

  Widget subjectCard(String title, IconData icon) {
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
            const SizedBox(height: 3.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 3.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // primary: Colors.blue,
                backgroundColor: const Color(0xFF56D7C5)
              ),
              child: const Text('Read', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

