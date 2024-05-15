import 'package:flutter/material.dart';

class PageCyberSecurity extends StatefulWidget {
  const PageCyberSecurity({Key? key});

  @override
  State<PageCyberSecurity> createState() => _PageCyberSecurityState();
}

class _PageCyberSecurityState extends State<PageCyberSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Cyber Security', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ...cardItems.map((item) => CardListItem(
                    title: item.title,
                    rating: item.rating,
                    viewers: item.viewers,
                    image: item.image,
                  )).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardListItemModel {
  final String title;
  final double rating;
  final int viewers;
  final ImageProvider image;

  CardListItemModel({
    required this.title,
    required this.rating,
    required this.viewers,
    required this.image,
  });
}

// Define your list of items here
final List<CardListItemModel> cardItems = [
  CardListItemModel(
    title: 'Cyber Security',
    rating: 4.5,
    viewers: 10,
    image: AssetImage('assets/gambar/cyber0.png'),
  ),
  CardListItemModel(
    title: 'Ethical Hacking',
    rating: 4.2,
    viewers: 10,
    image: AssetImage('assets/gambar/cyber1.png'),
  ),
  // Add other items here
  CardListItemModel(
    title: 'Introduction to Machine Learning',
    rating: 4.9,
    viewers: 15,
    image: AssetImage('assets/gambar/cyber3.png'),
  ),
  CardListItemModel(
    title: 'Introduction to Cyber Security',
    rating: 4.8,
    viewers: 12,
    image: AssetImage('assets/gambar/cyber2.png'),
  ),
  CardListItemModel(
    title: 'Introduction to Cyber Crime',
    rating: 4.0,
    viewers: 9,
    image: AssetImage('assets/gambar/cyber3.png'),
  ),
  CardListItemModel(
    title: 'Introduction to Cryptography',
    rating: 4.6,
    viewers: 11,
    image: AssetImage('assets/gambar/cyber4.png'),
  ),
  CardListItemModel(
    title: 'CISSP',
    rating: 4.5,
    viewers: 13,
    image: AssetImage('assets/gambar/cyber5.png'),
  ),
  CardListItemModel(
    title: 'Introduction to CISSP',
    rating: 4.6,
    viewers: 21,
    image: AssetImage('assets/gambar/cyber6.png'),
  ),
  CardListItemModel(
    title: 'Cyber Crime',
    rating: 4.7,
    viewers: 12,
    image: AssetImage('assets/gambar/cyber7.png'),
  ),
];

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
      elevation: 0,
      color: Colors.transparent,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
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
                  SizedBox(height: 3),
                  Text(
                    '$viewers k learners',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    image: image,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


