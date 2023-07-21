// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends FFFirebaseStruct {
  RolesStruct({
    String? client,
    String? donor,
    String? charityStaff,
    String? charityAdmin,
    String? fieldSupport,
    String? superAdministrator,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _client = client,
        _donor = donor,
        _charityStaff = charityStaff,
        _charityAdmin = charityAdmin,
        _fieldSupport = fieldSupport,
        _superAdministrator = superAdministrator,
        super(firestoreUtilData);

  // "client" field.
  String? _client;
  String get client => _client ?? '';
  set client(String? val) => _client = val;
  bool hasClient() => _client != null;

  // "donor" field.
  String? _donor;
  String get donor => _donor ?? '';
  set donor(String? val) => _donor = val;
  bool hasDonor() => _donor != null;

  // "charityStaff" field.
  String? _charityStaff;
  String get charityStaff => _charityStaff ?? '';
  set charityStaff(String? val) => _charityStaff = val;
  bool hasCharityStaff() => _charityStaff != null;

  // "charityAdmin" field.
  String? _charityAdmin;
  String get charityAdmin => _charityAdmin ?? '';
  set charityAdmin(String? val) => _charityAdmin = val;
  bool hasCharityAdmin() => _charityAdmin != null;

  // "fieldSupport" field.
  String? _fieldSupport;
  String get fieldSupport => _fieldSupport ?? '';
  set fieldSupport(String? val) => _fieldSupport = val;
  bool hasFieldSupport() => _fieldSupport != null;

  // "superAdministrator" field.
  String? _superAdministrator;
  String get superAdministrator => _superAdministrator ?? '';
  set superAdministrator(String? val) => _superAdministrator = val;
  bool hasSuperAdministrator() => _superAdministrator != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        client: data['client'] as String?,
        donor: data['donor'] as String?,
        charityStaff: data['charityStaff'] as String?,
        charityAdmin: data['charityAdmin'] as String?,
        fieldSupport: data['fieldSupport'] as String?,
        superAdministrator: data['superAdministrator'] as String?,
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RolesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'client': _client,
        'donor': _donor,
        'charityStaff': _charityStaff,
        'charityAdmin': _charityAdmin,
        'fieldSupport': _fieldSupport,
        'superAdministrator': _superAdministrator,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'client': serializeParam(
          _client,
          ParamType.String,
        ),
        'donor': serializeParam(
          _donor,
          ParamType.String,
        ),
        'charityStaff': serializeParam(
          _charityStaff,
          ParamType.String,
        ),
        'charityAdmin': serializeParam(
          _charityAdmin,
          ParamType.String,
        ),
        'fieldSupport': serializeParam(
          _fieldSupport,
          ParamType.String,
        ),
        'superAdministrator': serializeParam(
          _superAdministrator,
          ParamType.String,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        client: deserializeParam(
          data['client'],
          ParamType.String,
          false,
        ),
        donor: deserializeParam(
          data['donor'],
          ParamType.String,
          false,
        ),
        charityStaff: deserializeParam(
          data['charityStaff'],
          ParamType.String,
          false,
        ),
        charityAdmin: deserializeParam(
          data['charityAdmin'],
          ParamType.String,
          false,
        ),
        fieldSupport: deserializeParam(
          data['fieldSupport'],
          ParamType.String,
          false,
        ),
        superAdministrator: deserializeParam(
          data['superAdministrator'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct &&
        client == other.client &&
        donor == other.donor &&
        charityStaff == other.charityStaff &&
        charityAdmin == other.charityAdmin &&
        fieldSupport == other.fieldSupport &&
        superAdministrator == other.superAdministrator;
  }

  @override
  int get hashCode => const ListEquality().hash([
        client,
        donor,
        charityStaff,
        charityAdmin,
        fieldSupport,
        superAdministrator
      ]);
}

RolesStruct createRolesStruct({
  String? client,
  String? donor,
  String? charityStaff,
  String? charityAdmin,
  String? fieldSupport,
  String? superAdministrator,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RolesStruct(
      client: client,
      donor: donor,
      charityStaff: charityStaff,
      charityAdmin: charityAdmin,
      fieldSupport: fieldSupport,
      superAdministrator: superAdministrator,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RolesStruct? updateRolesStruct(
  RolesStruct? roles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    roles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRolesStructData(
  Map<String, dynamic> firestoreData,
  RolesStruct? roles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roles == null) {
    return;
  }
  if (roles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && roles.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rolesData = getRolesFirestoreData(roles, forFieldValue);
  final nestedData = rolesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = roles.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRolesFirestoreData(
  RolesStruct? roles, [
  bool forFieldValue = false,
]) {
  if (roles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(roles.toMap());

  // Add any Firestore field values
  roles.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRolesListFirestoreData(
  List<RolesStruct>? roless,
) =>
    roless?.map((e) => getRolesFirestoreData(e, true)).toList() ?? [];
