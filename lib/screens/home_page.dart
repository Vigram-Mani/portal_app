import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portal_app/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String email = "Gmail Id";
  final String rollNo = "Roll Number";
  final String regNo = "Register Number";
  final String copyRights =
      "© 2023-24 St Joseph's Institute Of Technology All Rights Reserved.";
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  final String profile = "Profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF001A39),
      ),
      // drawerScrimColor: Colors.white,
      drawer: Drawer(
        backgroundColor: const Color(0xFF001A39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('images/profile.png'),
                  const Text(
                    "USER NAME",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    email,
                    style: textStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    rollNo,
                    style: textStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    regNo,
                    style: textStyle,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: FilledButton.styleFrom(backgroundColor: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Text(
                  copyRights,
                  style: const TextStyle(color: Colors.white, fontSize: 8),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/inst_logo.png',
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    'Hi There!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Image.asset(
              'images/home_img.png',
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    'What are you looking for,',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: const Color(0xFF001A39),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                border: Border.all(color: Colors.white, width: 5),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeIcon(
                        imageName: "profile",
                        screenName: ProfilePage(),
                        description: "Profile",
                      ),
                      HomeIcon(
                        screenName: ProfilePage(),
                        imageName: "attendance",
                        description: "Attendance",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeIcon(
                        screenName: ProfilePage(),
                        imageName: "Marks",
                        description: "Marks",
                      ),
                      HomeIcon(
                        screenName: ProfilePage(),
                        imageName: "Notes",
                        description: "Notes",
                      )
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

class HomeIcon extends StatelessWidget {
  const HomeIcon({
    super.key,
    required this.screenName,
    required this.imageName,
    required this.description,
  });

  final screenName;
  final imageName;
  final description;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          (context),
          MaterialPageRoute(
            builder: (context) => screenName,
          ),
        );
      },
      child: Column(
        children: [
          Image.asset('images/$imageName.png'),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "$description",
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
