import 'package:flutter/material.dart';

class MyConstant extends StatelessWidget {
  static Color primary = const Color.fromARGB(0, 7, 3, 250);
  static Color sucess = const Color.fromARGB(0, 3, 251, 119);
  static Color warning = const Color.fromARGB(0, 250, 126, 3);
  static Color danger = const Color.fromARGB(0, 250, 3, 3);
  static Color info = const Color.fromARGB(255, 220, 4, 249);

  TextStyle h1Style() {
    return TextStyle(
      fontFamily: 'Raleway',
      color: primary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

    TextStyle h2Style() {
    return TextStyle(
      fontFamily: 'Raleway',
      color: primary,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }



  
  const MyConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}