// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SmartImageLocationStruct extends FFFirebaseStruct {
  SmartImageLocationStruct({
    List<DocumentReference>? userRecord,
    String? defaultAsset,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userRecord = userRecord,
        _defaultAsset = defaultAsset,
        super(firestoreUtilData);

  // "userRecord" field.
  List<DocumentReference>? _userRecord;
  List<DocumentReference> get userRecord => _userRecord ?? const [];
  set userRecord(List<DocumentReference>? val) => _userRecord = val;
  void updateUserRecord(Function(List<DocumentReference>) updateFn) =>
      updateFn(_userRecord ??= []);
  bool hasUserRecord() => _userRecord != null;

  // "defaultAsset" field.
  String? _defaultAsset;
  String get defaultAsset => _defaultAsset ?? '';
  set defaultAsset(String? val) => _defaultAsset = val;
  bool hasDefaultAsset() => _defaultAsset != null;

  static SmartImageLocationStruct fromMap(Map<String, dynamic> data) =>
      SmartImageLocationStruct(
        userRecord: getDataList(data['userRecord']),
        defaultAsset: data['defaultAsset'] as String?,
      );

  static SmartImageLocationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? SmartImageLocationStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'userRecord': _userRecord,
        'defaultAsset': _defaultAsset,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userRecord': serializeParam(
          _userRecord,
          ParamType.DocumentReference,
          true,
        ),
        'defaultAsset': serializeParam(
          _defaultAsset,
          ParamType.String,
        ),
      }.withoutNulls;

  static SmartImageLocationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SmartImageLocationStruct(
        userRecord: deserializeParam<DocumentReference>(
          data['userRecord'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['users'],
        ),
        defaultAsset: deserializeParam(
          data['defaultAsset'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SmartImageLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SmartImageLocationStruct &&
        listEquality.equals(userRecord, other.userRecord) &&
        defaultAsset == other.defaultAsset;
  }

  @override
  int get hashCode => const ListEquality().hash([userRecord, defaultAsset]);
}

SmartImageLocationStruct createSmartImageLocationStruct({
  String? defaultAsset,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SmartImageLocationStruct(
      defaultAsset: defaultAsset,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SmartImageLocationStruct? updateSmartImageLocationStruct(
  SmartImageLocationStruct? smartImageLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    smartImageLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSmartImageLocationStructData(
  Map<String, dynamic> firestoreData,
  SmartImageLocationStruct? smartImageLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (smartImageLocation == null) {
    return;
  }
  if (smartImageLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && smartImageLocation.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final smartImageLocationData =
      getSmartImageLocationFirestoreData(smartImageLocation, forFieldValue);
  final nestedData =
      smartImageLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = smartImageLocation.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSmartImageLocationFirestoreData(
  SmartImageLocationStruct? smartImageLocation, [
  bool forFieldValue = false,
]) {
  if (smartImageLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(smartImageLocation.toMap());

  // Add any Firestore field values
  smartImageLocation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSmartImageLocationListFirestoreData(
  List<SmartImageLocationStruct>? smartImageLocations,
) =>
    smartImageLocations
        ?.map((e) => getSmartImageLocationFirestoreData(e, true))
        .toList() ??
    [];
