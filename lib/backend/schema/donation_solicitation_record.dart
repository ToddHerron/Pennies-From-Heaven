import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationSolicitationRecord extends FirestoreRecord {
  DonationSolicitationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ClientID" field.
  DocumentReference? _clientID;
  DocumentReference? get clientID => _clientID;
  bool hasClientID() => _clientID != null;

  // "CharityID" field.
  DocumentReference? _charityID;
  DocumentReference? get charityID => _charityID;
  bool hasCharityID() => _charityID != null;

  // "DonationSoliticitationID" field.
  DocumentReference? _donationSoliticitationID;
  DocumentReference? get donationSoliticitationID => _donationSoliticitationID;
  bool hasDonationSoliticitationID() => _donationSoliticitationID != null;

  // "IsDisabled" field.
  bool? _isDisabled;
  bool get isDisabled => _isDisabled ?? false;
  bool hasIsDisabled() => _isDisabled != null;

  void _initializeFields() {
    _clientID = snapshotData['ClientID'] as DocumentReference?;
    _charityID = snapshotData['CharityID'] as DocumentReference?;
    _donationSoliticitationID =
        snapshotData['DonationSoliticitationID'] as DocumentReference?;
    _isDisabled = snapshotData['IsDisabled'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DonationSolicitation');

  static Stream<DonationSolicitationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DonationSolicitationRecord.fromSnapshot(s));

  static Future<DonationSolicitationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DonationSolicitationRecord.fromSnapshot(s));

  static DonationSolicitationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationSolicitationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationSolicitationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationSolicitationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationSolicitationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationSolicitationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationSolicitationRecordData({
  DocumentReference? clientID,
  DocumentReference? charityID,
  DocumentReference? donationSoliticitationID,
  bool? isDisabled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ClientID': clientID,
      'CharityID': charityID,
      'DonationSoliticitationID': donationSoliticitationID,
      'IsDisabled': isDisabled,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationSolicitationRecordDocumentEquality
    implements Equality<DonationSolicitationRecord> {
  const DonationSolicitationRecordDocumentEquality();

  @override
  bool equals(DonationSolicitationRecord? e1, DonationSolicitationRecord? e2) {
    return e1?.clientID == e2?.clientID &&
        e1?.charityID == e2?.charityID &&
        e1?.donationSoliticitationID == e2?.donationSoliticitationID &&
        e1?.isDisabled == e2?.isDisabled;
  }

  @override
  int hash(DonationSolicitationRecord? e) => const ListEquality().hash(
      [e?.clientID, e?.charityID, e?.donationSoliticitationID, e?.isDisabled]);

  @override
  bool isValidKey(Object? o) => o is DonationSolicitationRecord;
}
