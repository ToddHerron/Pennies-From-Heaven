import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationsRecord extends FirestoreRecord {
  DonationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "donor" field.
  DocumentReference? _donor;
  DocumentReference? get donor => _donor;
  bool hasDonor() => _donor != null;

  // "donorName" field.
  String? _donorName;
  String get donorName => _donorName ?? '';
  bool hasDonorName() => _donorName != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "charityPortion" field.
  List<double>? _charityPortion;
  List<double> get charityPortion => _charityPortion ?? const [];
  bool hasCharityPortion() => _charityPortion != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _donor = snapshotData['donor'] as DocumentReference?;
    _donorName = snapshotData['donorName'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _currency = snapshotData['currency'] as String?;
    _client = snapshotData['client'] as DocumentReference?;
    _charityPortion = getDataList(snapshotData['charityPortion']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('donations')
          : FirebaseFirestore.instance.collectionGroup('donations');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('donations').doc();

  static Stream<DonationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonationsRecord.fromSnapshot(s));

  static Future<DonationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonationsRecord.fromSnapshot(s));

  static DonationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationsRecordData({
  DocumentReference? donor,
  String? donorName,
  double? amount,
  String? currency,
  DocumentReference? client,
  DateTime? timestamp,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'donor': donor,
      'donorName': donorName,
      'amount': amount,
      'currency': currency,
      'client': client,
      'timestamp': timestamp,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationsRecordDocumentEquality implements Equality<DonationsRecord> {
  const DonationsRecordDocumentEquality();

  @override
  bool equals(DonationsRecord? e1, DonationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.donor == e2?.donor &&
        e1?.donorName == e2?.donorName &&
        e1?.amount == e2?.amount &&
        e1?.currency == e2?.currency &&
        e1?.client == e2?.client &&
        listEquality.equals(e1?.charityPortion, e2?.charityPortion) &&
        e1?.timestamp == e2?.timestamp &&
        e1?.location == e2?.location;
  }

  @override
  int hash(DonationsRecord? e) => const ListEquality().hash([
        e?.donor,
        e?.donorName,
        e?.amount,
        e?.currency,
        e?.client,
        e?.charityPortion,
        e?.timestamp,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is DonationsRecord;
}
