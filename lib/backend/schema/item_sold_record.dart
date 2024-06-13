import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemSoldRecord extends FirestoreRecord {
  ItemSoldRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('itemSold')
          : FirebaseFirestore.instance.collectionGroup('itemSold');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('itemSold').doc(id);

  static Stream<ItemSoldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemSoldRecord.fromSnapshot(s));

  static Future<ItemSoldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemSoldRecord.fromSnapshot(s));

  static ItemSoldRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemSoldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemSoldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemSoldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemSoldRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemSoldRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemSoldRecordData({
  String? name,
  double? price,
  int? quantity,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'quantity': quantity,
      'description': description,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemSoldRecordDocumentEquality implements Equality<ItemSoldRecord> {
  const ItemSoldRecordDocumentEquality();

  @override
  bool equals(ItemSoldRecord? e1, ItemSoldRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ItemSoldRecord? e) => const ListEquality()
      .hash([e?.name, e?.price, e?.quantity, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ItemSoldRecord;
}
