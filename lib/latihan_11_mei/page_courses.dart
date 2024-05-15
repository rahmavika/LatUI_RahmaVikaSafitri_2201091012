import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageCourses extends StatefulWidget {
  const PageCourses({Key? key});

  @override
  State<PageCourses> createState() => _PageCourses();
}

class _PageCourses extends State<PageCourses> {
  TextEditingController searchController = TextEditingController();
  List<Course> courseList = [];
  List<Course>? filteredCourseList;

  @override
  void initState() {
    super.initState();
    fetchCourses();
  }

  Future<void> fetchCourses() async {
    // Simulate fetching data from a remote server
    await Future.delayed(const Duration(seconds: 1), () {
      List<Course> fetchedCourses = [
        Course('Cyber Security', 4.5, 10, 'assets/gambar/cyber0.png'),
        Course('Ethica Hacking', 4.2, 10, 'assets/gambar/cyber1.png'),
        Course('Introduction to Cyber Security', 4.8, 12, 'assets/gambar/cyber2.png'),
        Course('Introduction to Cyber Crime', 4.0, 9, 'assets/gambar/cyber3.png'),
        Course('Introduction to Cryptography', 4.6, 11, 'assets/gambar/cyber4.png'),
        Course('CISSP', 4.5, 13, 'assets/gambar/cyber5.png'),
        Course('Introduction to CISSP', 4.6, 21, 'assets/gambar/cyber6.png'),
        Course('Cyber Crime', 4.7, 12, 'assets/gambar/cyber7.png'),
      ];

      setState(() {
        courseList = fetchedCourses;
        filteredCourseList = fetchedCourses;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cyber Security',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  filteredCourseList = courseList
                      .where((course) =>
                      course.title.toLowerCase().contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCourseList?.length ?? 0,
              itemBuilder: (context, index) {
                Course course = filteredCourseList![index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PageDetailCourse(course)));
                    },
                    child: CardListItem(
                      title: course.title,
                      rating: course.rating,
                      viewers: course.viewers,
                      image: AssetImage(course.imagePath),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Course {
  final String title;
  final double rating;
  final int viewers;
  final String imagePath;

  Course(this.title, this.rating, this.viewers, this.imagePath);
}

class CardListItem extends StatelessWidget {
  final String title;
  final double rating;
  final int viewers;
  final ImageProvider image;

  const CardListItem({
    required this.title,
    required this.rating,
    required this.viewers,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$viewers k learners',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Image(
                  image: image,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageDetailCourse extends StatelessWidget {
  final Course course;

  const PageDetailCourse(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  course.imagePath,
                  height: 320,
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                course.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 5),
                  Text(
                    course.rating.toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                '${course.viewers} k learners',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Course description and details go here...',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              // Spacer to push the button to the bottom
              SizedBox(height: 150), // Adjust the height as needed
              ElevatedButton(
                onPressed: () {
                  // Add action here
                },
                child: Text('Start Learning'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: PageCourses(),
  ));
}