import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portal_app/screens/login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset(
              'images/LANDING PAGE new.svg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Image.asset(
              'images/inst_logo.png',
              width: MediaQuery.of(context).size.width * 0.85,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.30,
            bottom: MediaQuery.of(context).size.height * 0.91,
            child: Image.asset(
              'images/Group.png',
              width: MediaQuery.of(context).size.width * 0.50,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.60,
            top: MediaQuery.of(context).size.height * 0.80,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(),
            ),
          ),
        ],
      ),
    );
  }
}
