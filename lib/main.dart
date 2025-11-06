import 'package:flutter/material.dart';
import 'package:g_3_shopping/screen/cart_provider.dart';
import 'package:g_3_shopping/screen/catalog_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ShoppingCartApp());
}

class ShoppingCartApp extends StatelessWidget {
  const ShoppingCartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: CatalogScreen()),
    );
  }
}