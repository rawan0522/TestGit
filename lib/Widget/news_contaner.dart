import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, required this.img, required this.title, required this.description});

  final String img;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0), // Optional: Add margin for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(img, width: 400),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}