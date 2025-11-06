import 'package:flutter/material.dart';
import 'package:g_3_shopping/constants.dart';
import 'package:g_3_shopping/screen/cart_provider.dart';

import 'package:g_3_shopping/screen/widgets.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
      ),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: provider.cartItems.length,
                itemBuilder: (context, index) => ItemWidget(
                  isCartItem: true,
                  item: provider.cartItems[index],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide.none,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Buy \$${provider.price}",
                style: TextStyle(color: Colors.white),
              ),
            ), //I suggest \&& or "N"...instead of child: Text("Buy ${provider.price} \$")),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
