import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class VendorsRecord extends FirestoreRecord {
  VendorsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "businessName" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone2" field.
  String? _phone2;
  String get phone2 => _phone2 ?? '';
  bool hasPhone2() => _phone2 != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "businessBanner" field.
  String? _businessBanner;
  String get businessBanner => _businessBanner ?? '';
  bool hasBusinessBanner() => _businessBanner != null;

  // "isOpen" field.
  bool? _isOpen;
  bool get isOpen => _isOpen ?? false;
  bool hasIsOpen() => _isOpen != null;

  // "vendorType" field.
  String? _vendorType;
  String get vendorType => _vendorType ?? '';
  bool hasVendorType() => _vendorType != null;

  void _initializeFields() {
    _address = snapshotData['address'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _businessName = snapshotData['businessName'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phone2 = snapshotData['phone2'] as String?;
    _description = snapshotData['description'] as String?;
    _businessBanner = snapshotData['businessBanner'] as String?;
    _isOpen = snapshotData['isOpen'] as bool?;
    _vendorType = snapshotData['vendorType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendors');

  static Stream<VendorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendorsRecord.fromSnapshot(s));

  static Future<VendorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendorsRecord.fromSnapshot(s));

  static VendorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendorsRecordData({
  String? address,
  String? phone,
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? businessName,
  String? displayName,
  String? phone2,
  String? description,
  String? businessBanner,
  bool? isOpen,
  String? vendorType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'phone': phone,
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'businessName': businessName,
      'display_name': displayName,
      'phone2': phone2,
      'description': description,
      'businessBanner': businessBanner,
      'isOpen': isOpen,
      'vendorType': vendorType,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendorsRecordDocumentEquality implements Equality<VendorsRecord> {
  const VendorsRecordDocumentEquality();

  @override
  bool equals(VendorsRecord? e1, VendorsRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.businessName == e2?.businessName &&
        e1?.displayName == e2?.displayName &&
        e1?.phone2 == e2?.phone2 &&
        e1?.description == e2?.description &&
        e1?.businessBanner == e2?.businessBanner &&
        e1?.isOpen == e2?.isOpen &&
        e1?.vendorType == e2?.vendorType;
  }

  @override
  int hash(VendorsRecord? e) => const ListEquality().hash([
        e?.address,
        e?.phone,
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.businessName,
        e?.displayName,
        e?.phone2,
        e?.description,
        e?.businessBanner,
        e?.isOpen,
        e?.vendorType
      ]);

  @override
  bool isValidKey(Object? o) => o is VendorsRecord;
}
