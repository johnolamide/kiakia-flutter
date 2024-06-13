import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "vendor" field.
  DocumentReference? _vendor;
  DocumentReference? get vendor => _vendor;
  bool hasVendor() => _vendor != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "buyer" field.
  DocumentReference? _buyer;
  DocumentReference? get buyer => _buyer;
  bool hasBuyer() => _buyer != null;

  // "status" field.
  OrderStatus? _status;
  OrderStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "deliveryAddress" field.
  String? _deliveryAddress;
  String get deliveryAddress => _deliveryAddress ?? '';
  bool hasDeliveryAddress() => _deliveryAddress != null;

  // "items" field.
  List<CartItemStruct>? _items;
  List<CartItemStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  void _initializeFields() {
    _vendor = snapshotData['vendor'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _buyer = snapshotData['buyer'] as DocumentReference?;
    _status = deserializeEnum<OrderStatus>(snapshotData['status']);
    _deliveryAddress = snapshotData['deliveryAddress'] as String?;
    _items = getStructList(
      snapshotData['items'],
      CartItemStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? vendor,
  double? totalPrice,
  DateTime? createdTime,
  DocumentReference? buyer,
  OrderStatus? status,
  String? deliveryAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vendor': vendor,
      'totalPrice': totalPrice,
      'created_time': createdTime,
      'buyer': buyer,
      'status': status,
      'deliveryAddress': deliveryAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.vendor == e2?.vendor &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.createdTime == e2?.createdTime &&
        e1?.buyer == e2?.buyer &&
        e1?.status == e2?.status &&
        e1?.deliveryAddress == e2?.deliveryAddress &&
        listEquality.equals(e1?.items, e2?.items);
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.vendor,
        e?.totalPrice,
        e?.createdTime,
        e?.buyer,
        e?.status,
        e?.deliveryAddress,
        e?.items
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
