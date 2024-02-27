import 'package:flutter/material.dart';
import 'package:nike_shoe/models/cart.dart';
import 'package:nike_shoe/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Text(widget.shoe.name),
        leading: Image.asset(widget.shoe.imagePath),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
            onPressed: removeItemCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
