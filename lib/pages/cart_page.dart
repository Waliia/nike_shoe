import 'package:flutter/material.dart';
import 'package:nike_shoe/components/cart_item.dart';
import 'package:nike_shoe/models/cart.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Consumer<Cart>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: value.getCartItems().length,
                  itemBuilder: (context, index) {
                    return CartItem(
                      shoe: value.getCartItems()[index],
                    );
                  },
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
