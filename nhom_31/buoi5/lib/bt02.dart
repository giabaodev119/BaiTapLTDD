import 'package:flutter/material.dart';

class BT02 extends StatelessWidget {
  const BT02({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> articles = List.generate(
      7,
          (index) => {
        "title": "Bài viết ${index + 1}",
        "description": "Mô tả ngắn gọn về bài viết ${index + 1}",
        "image": "https://picsum.photos/201",
      },
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Trang chủ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return Card(
                margin: const EdgeInsets.symmetric(vertical: 8 ),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
            ),
            elevation: 3,
            child: ListTile(
            leading: ClipRRect(
            borderRadius: BorderRadius.circular(8 ),
            child: Image.network(
            article["image"]!,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            ),
            ),
            title: Text(
            article["title"]!,
            style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            ),
            ),
            subtitle: Text(article["description"]!),
            ),
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}