import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_shoe/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                'images/nike.png',
                height: 150,
              ),
            ),
            const SizedBox(
              height: 48,
            ),

            // title
            const Text(
              'Just Do It',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),

            // subtitle
            const Text(
              'Explore the latest collection of Nike UAE products at Nike official website. Shop now!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 48,
            ),
            // button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )),
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
