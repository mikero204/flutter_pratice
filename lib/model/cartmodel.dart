import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [Item("測試物品1", 850), Item("測試物品2", 850)];
  List<Item> get items {
    return _items;
  }

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Item item) {
    _items.removeWhere((it) => it.name == item.name);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

class Item {
  Item(this.name, this.price);
  String name;
  double price;
}
