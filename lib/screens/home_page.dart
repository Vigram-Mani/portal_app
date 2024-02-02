import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'images/inst_logo.png',
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Hi There!')],
            ),
            Image.asset(
              'images/home_img.png',
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('What are you looking for,')],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
