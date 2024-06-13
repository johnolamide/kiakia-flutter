import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _totalAmount = 0.0;
  double get totalAmount => _totalAmount;
  set totalAmount(double value) {
    _totalAmount = value;
  }

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }

  List<CartItemStruct> _cart = [];
  List<CartItemStruct> get cart => _cart;
  set cart(List<CartItemStruct> value) {
    _cart = value;
  }

  void addToCart(CartItemStruct value) {
    cart.add(value);
  }

  void removeFromCart(CartItemStruct value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartItemStruct value) {
    cart.insert(index, value);
  }
}
