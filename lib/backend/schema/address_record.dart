import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AddressRecord extends FirestoreRecord {
  AddressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _street = snapshotData['street'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('address')
          : FirebaseFirestore.instance.collectionGroup('address');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('address').doc(id);

  static Stream<AddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressRecord.fromSnapshot(s));

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressRecord.fromSnapshot(s));

  static AddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressRecordData({
  String? street,
  String? city,
  String? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressRecordDocumentEquality implements Equality<AddressRecord> {
  const AddressRecordDocumentEquality();

  @override
  bool equals(AddressRecord? e1, AddressRecord? e2) {
    return e1?.street == e2?.street &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state;
  }

  @override
  int hash(AddressRecord? e) =>
      const ListEquality().hash([e?.street, e?.city, e?.state]);

  @override
  bool isValidKey(Object? o) => o is AddressRecord;
}
