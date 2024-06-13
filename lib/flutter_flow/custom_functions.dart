import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int increaseQuantity(int? quantity) {
  // increase the quantity by 1 on every call
  if (quantity == null) {
    return 0;
  } else {
    return quantity + 1;
  }
}

int decreaseQuantity(int? quantity) {
  // decrease quantity by 1 on every call but quantity cannot be less than 0
// decrease the quantity by 1 on every call, but ensure it cannot be less than 0
  if (quantity == null || quantity <= 0) {
    return 0;
  } else {
    return quantity - 1;
  }
}

double calculateAmount(
  double? price,
  int? quantity,
) {
  // calculates the total amount by multiplying the quantity and the individual price
  if (price == null || quantity == null) {
    return 0;
  } else {
    return price * quantity;
  }
}

double decreaseAmount(
  double currentAmount,
  double amount,
) {
  // decrease currentAmount by amount and return the new amount
  if (amount < currentAmount) {
    return currentAmount - amount;
  }
  return 0;
}

double calculatePaymentPrice(
  double itemPrice,
  double tax,
  double deliveryPrice,
) {
  return (itemPrice + tax + deliveryPrice);
}
