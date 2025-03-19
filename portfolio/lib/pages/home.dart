import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _launchGmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'khemsombath123@gmail.com',
      queryParameters: {
        'subject': 'Hello Khem!',
        'body': 'I would like to discuss an opportunity with you.',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Color(0xFF06598F),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          // child: SvgPicture.asset(
          //   'assets/icons/material-symbols_account-circle-outline.svg',
          //   height: 24,
          //   width: 24,
          //   color: Color(0xFF06598F),
          // ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/photo_2025-03-19_22-02-23.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to my Portfolio",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            const Text(
              "Hi I'm",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Khem Soksombath",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF06598F),
              ),
            ),
            const Text(
              "UX/UI Designer",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: _launchGmail, // Calls function to open Gmail
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF06598F), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email, color: Color(0xFF06598F)), // Email icon
                    SizedBox(width: 8),
                    Text(
                      "Contact Me",
                      style: TextStyle(fontSize: 18, color: Color(0xFF06598F)),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF06598F), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Download CV",
                      style: TextStyle(fontSize: 18, color: Color(0xFF06598F)),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.download, color: Color(0xFF06598F)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
