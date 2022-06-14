import 'package:flutter/material.dart';
import 'package:flutter_pratice/utils/index.dart';
import 'package:provider/provider.dart';
import '../model/cartmodel.dart';

typedef Callback = void Function();

class CartItem extends StatelessWidget {
  const CartItem(
      {Key? key,
      required this.name,
      required this.price,
      required this.callback})
      : super(key: key);
  final String name;
  final double price;
  final Callback callback;
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 250,
        height: 100,
        color: Utils.randomColor(),
        child: Flex(children: [
          Expanded(
            child: Text(name),
            flex: 2,
          ),
          Expanded(
              child: TextButton(
                  onPressed: () => {callback()}, child: const Text("X")),
              flex: 1)
        ], direction: Axis.horizontal));
  }
}
