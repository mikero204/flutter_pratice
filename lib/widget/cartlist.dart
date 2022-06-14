import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_pratice/widget/cartitem.dart';
import 'package:provider/provider.dart';
import '../model/cartmodel.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);
  // Future<void> onRefresh() async {
  //   await Future.delayed(Duration(seconds: 2));
  // }

  @override
  Widget build(BuildContext context) {
    var random = Random();

    return Consumer<CartModel>(builder: (context, cart, child) {
      return RefreshIndicator(
          child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (BuildContext context, int index) {
                return CartItem(
                  name: cart.items[index].name,
                  price: cart.items[index].price,
                  callback: () => cart.remove(cart.items[index]),
                );
              }),
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
            cart.add(Item("測試" + random.nextInt(10000).toString(), 60));
          });
    });
  }
}
