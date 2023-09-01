import 'package:flutter/material.dart';
import 'package:widget_basic/constant/my_constant.dart';
import 'bottomnavbar_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:  Text(
          'Flutter First My App.',
          style: const MyConstant().h1Style(),
        ), 
        leading: const Icon(
          Icons.menu, 
          color: Colors.pink,
          size: 30,
        ),
        actions: const [
          Icon(Icons.search, color: Colors.amber, size: 24,),
          SizedBox(width: 10,),
          Icon(Icons.add, color: Colors.amber, size: 24,),
          SizedBox(width: 10,),
          Icon(Icons.person, color: Colors.amber, size: 24,),
          SizedBox(width: 10,),
        ],
      ),
    body: const Center(
      child: Text(
        'HOME SCREEN', 
        style: TextStyle(
          color: Colors.amber,
          fontSize: 40,
          fontWeight: FontWeight.w700,
          ),
        ),
      ),
  bottomNavigationBar: const BottomNavBar(),
    );
  }
}