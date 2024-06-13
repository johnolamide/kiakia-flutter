import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BuyersRecord extends FirestoreRecord {
  BuyersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "phone_number2" field.
  String? _phoneNumber2;
  String get phoneNumber2 => _phoneNumber2 ?? '';
  bool hasPhoneNumber2() => _phoneNumber2 != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "middleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "deliveryAddress" field.
  List<DocumentReference>? _deliveryAddress;
  List<DocumentReference> get deliveryAddress => _deliveryAddress ?? const [];
  bool hasDeliveryAddress() => _deliveryAddress != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _phoneNumber2 = snapshotData['phone_number2'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _middleName = snapshotData['middleName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _deliveryAddress = getDataList(snapshotData['deliveryAddress']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buyers');

  static Stream<BuyersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuyersRecord.fromSnapshot(s));

  static Future<BuyersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuyersRecord.fromSnapshot(s));

  static BuyersRecord fromSnapshot(DocumentSnapshot snapshot) => BuyersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuyersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuyersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuyersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuyersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuyersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? phoneNumber2,
  String? firstName,
  String? middleName,
  String? lastName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'phone_number2': phoneNumber2,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
    }.withoutNulls,
  );

  return firestoreData;
}

class BuyersRecordDocumentEquality implements Equality<BuyersRecord> {
  const BuyersRecordDocumentEquality();

  @override
  bool equals(BuyersRecord? e1, BuyersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.phoneNumber2 == e2?.phoneNumber2 &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        listEquality.equals(e1?.deliveryAddress, e2?.deliveryAddress);
  }

  @override
  int hash(BuyersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.phoneNumber2,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.deliveryAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is BuyersRecord;
}
