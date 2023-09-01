import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFCACACA),
              ),
              child: Row(
                children: [
                  SizedBox(width: 12),
                  Icon(Ionicons.search_outline),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Authors, Books, Publishers...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Ionicons.mic_outline),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Category",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: CategoryCard("Fiction", Colors.blue),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CategoryCard("Non-Fiction", Colors.green),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CategoryCard("Poetry", Colors.orange),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CategoryCard("Research", Colors.red),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CategoryCard("Science", Colors.purple),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CategoryCard("History", Colors.yellow),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CategoryCard("Biography", Colors.teal),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CategoryCard("Cooking", Colors.brown),
                ),
              ],
            ),
            // Add more categories here
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  CategoryCard(this.title, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
