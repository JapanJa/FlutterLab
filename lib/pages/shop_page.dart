import 'package:flutter/material.dart';

class Book {
  final String title;
  final String author;
  final String description;
  final double price;
  final String imageUrl;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class ShopPage extends StatelessWidget {
  final List<Book> books = [
  Book(
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    description:
        "A story of love, wealth, and excess in the Roaring Twenties.",
    price: 14.99,
    imageUrl: "https://m.media-amazon.com/images/I/71FTb9X6wsL._AC_UF1000,1000_QL80_.jpg",
  ),
  Book(
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
    description:
        "A classic novel exploring racial injustice in the American South.",
    price: 12.99,
    imageUrl: "https://storage.naiin.com/system/application/bookstore/resource/product/201610/201714/1000190143_front_XXL.jpg?imgname=%E0%B8%86%E0%B9%88%E0%B8%B2%E0%B8%A1%E0%B9%87%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B9%80%E0%B8%9A%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%94---To-Kill-a-Mockingbird--%E0%B8%8A%E0%B8%B8%E0%B8%94-%E0%B8%A1%E0%B9%87%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B9%80%E0%B8%9A%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%94",
  ),
  Book(
    title: "1984",
    author: "George Orwell",
    description: "A dystopian novel depicting a totalitarian regime.",
    price: 9.99,
    imageUrl: "https://m.media-amazon.com/images/I/71kxa1-0mfL._AC_UF1000,1000_QL80_.jpg",
  ),
  Book(
    title: "The Catcher in the Rye",
    author: "J.D. Salinger",
    description: "The coming-of-age story of Holden Caulfield.",
    price: 11.99,
    imageUrl: "https://www.asiabooks.com/media/catalog/product/cache/a5ac216be58c0cbce1cb04612ece96dc/9/7/9780316769488_1.jpg",
  ),
  Book(
    title: "Pride and Prejudice",
    author: "Jane Austen",
    description: "A classic novel of love and societal expectations.",
    price: 13.99,
    imageUrl: "https://cloudfront.penguin.co.in/wp-content/uploads/2022/01/9780143454229.jpg",
  ),
  Book(
    title: "The Hobbit",
    author: "J.R.R. Tolkien",
    description: "An epic adventure in a fantasy world.",
    price: 15.99,
    imageUrl: "https://m.media-amazon.com/images/I/710+HcoP38L._AC_UF1000,1000_QL80_.jpg",
  ),
  Book(
    title: "The Lord of the Rings",
    author: "J.R.R. Tolkien",
    description: "A legendary fantasy trilogy of epic proportions.",
    price: 29.99,
    imageUrl: "https://m.media-amazon.com/images/I/71jLBXtWJWL._AC_UF1000,1000_QL80_.jpg",
  ),
  Book(
    title: "Brave New World",
    author: "Aldous Huxley",
    description: "A vision of a dystopian future society.",
    price: 10.99,
    imageUrl: "https://m.media-amazon.com/images/I/81zE42gT3xL.jpg",
  ),
    // Add more books here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                book.imageUrl,
                width: 80,
                height: 120,
                fit: BoxFit.cover,
              ),
              title: Text(book.title),
              subtitle: Text(book.author),
              trailing: Text('\$${book.price.toStringAsFixed(2)}'),
              onTap: () {
                // Add logic to view book details or make a purchase here.
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ShopPage(),
  ));
}