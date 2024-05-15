import 'package:flutter/material.dart';


class PageDetailCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Machine Learning'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background_image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Machine Learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('⏰ 6 Hours'),
                    Text('🎓 Completion Certificate'),
                    Text('🔰 Beginner'),
                    SizedBox(height: 16),
                    Text(
                      'What will I learn?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers.',
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Ratings and Reviews',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star_half, color: Colors.yellow),
                        Icon(Icons.star_border, color: Colors.yellow),
                        SizedBox(width: 8),
                        Text('3.4 (3 reviews)'),
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text('Start Learning'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}