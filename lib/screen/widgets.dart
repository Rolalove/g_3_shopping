import 'package:flutter/material.dart';
import 'package:g_3_shopping/constants.dart';
import 'package:g_3_shopping/screen/cart_provider.dart';
import 'package:g_3_shopping/screen/item_model.dart';
import 'package:provider/provider.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item, this.isCartItem = false});
  final Item item;
  final bool isCartItem;

/*class ItemWidget extends StatelessWidget {                               
  const ItemWidget({
    super.key,
    required this.item,
  }); 

final Item item; */

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: item.color),
      ),
      title: Text(item.name),
      subtitle: Text("\$${item.price}"),                                   //sugg also change positioning \$$
      trailing: isCartItem
          ? null
          : ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              onPressed: () => provider.addItem(item),
              child: const Text("+Add")),                                  //added "+"
    );
  }
}
