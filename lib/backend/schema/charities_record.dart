import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharitiesRecord extends FirestoreRecord {
  CharitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "charityLegalName" field.
  String? _charityLegalName;
  String get charityLegalName => _charityLegalName ?? '';
  bool hasCharityLegalName() => _charityLegalName != null;

  // "charityRegistrationNumber" field.
  String? _charityRegistrationNumber;
  String get charityRegistrationNumber => _charityRegistrationNumber ?? '';
  bool hasCharityRegistrationNumber() => _charityRegistrationNumber != null;

  // "administrators" field.
  List<DocumentReference>? _administrators;
  List<DocumentReference> get administrators => _administrators ?? const [];
  bool hasAdministrators() => _administrators != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "governmentLink" field.
  String? _governmentLink;
  String get governmentLink => _governmentLink ?? '';
  bool hasGovernmentLink() => _governmentLink != null;

  // "charityInformalName" field.
  String? _charityInformalName;
  String get charityInformalName => _charityInformalName ?? '';
  bool hasCharityInformalName() => _charityInformalName != null;

  void _initializeFields() {
    _charityLegalName = snapshotData['charityLegalName'] as String?;
    _charityRegistrationNumber =
        snapshotData['charityRegistrationNumber'] as String?;
    _administrators = getDataList(snapshotData['administrators']);
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _governmentLink = snapshotData['governmentLink'] as String?;
    _charityInformalName = snapshotData['charityInformalName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('charities');

  static Stream<CharitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharitiesRecord.fromSnapshot(s));

  static Future<CharitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharitiesRecord.fromSnapshot(s));

  static CharitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharitiesRecordData({
  String? charityLegalName,
  String? charityRegistrationNumber,
  AddressStruct? address,
  String? governmentLink,
  String? charityInformalName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'charityLegalName': charityLegalName,
      'charityRegistrationNumber': charityRegistrationNumber,
      'address': AddressStruct().toMap(),
      'governmentLink': governmentLink,
      'charityInformalName': charityInformalName,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class CharitiesRecordDocumentEquality implements Equality<CharitiesRecord> {
  const CharitiesRecordDocumentEquality();

  @override
  bool equals(CharitiesRecord? e1, CharitiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.charityLegalName == e2?.charityLegalName &&
        e1?.charityRegistrationNumber == e2?.charityRegistrationNumber &&
        listEquality.equals(e1?.administrators, e2?.administrators) &&
        e1?.address == e2?.address &&
        e1?.governmentLink == e2?.governmentLink &&
        e1?.charityInformalName == e2?.charityInformalName;
  }

  @override
  int hash(CharitiesRecord? e) => const ListEquality().hash([
        e?.charityLegalName,
        e?.charityRegistrationNumber,
        e?.administrators,
        e?.address,
        e?.governmentLink,
        e?.charityInformalName
      ]);

  @override
  bool isValidKey(Object? o) => o is CharitiesRecord;
}
