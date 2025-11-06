import 'package:flutter/material.dart';
import 'package:g_3_shopping/constants.dart';
import 'package:g_3_shopping/screen/cart_screen.dart';

import 'package:g_3_shopping/screen/items_list.dart';
import 'package:g_3_shopping/screen/widgets.dart';


class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text("Catalog"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    )),
                child: const Icon(Icons.shopping_cart)),
            const SizedBox(
              width: 15,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: catalog.length,
          itemBuilder: (context, index) => ItemWidget(
            item: catalog[index],
          ),
        ));
  }
}