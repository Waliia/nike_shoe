import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_clothing/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                height: 150,
                'assets/nike.png',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              'Just Do It',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey.shade100,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
                'Brand new clothing for the mens and women including kids wear with premium quality',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 16)),
            const SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 20,
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
