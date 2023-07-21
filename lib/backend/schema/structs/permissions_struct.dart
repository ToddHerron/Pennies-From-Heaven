// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PermissionsStruct extends FFFirebaseStruct {
  PermissionsStruct({
    bool? active,
    bool? donor,
    bool? client,
    bool? charity,
    bool? charityAdmin,
    bool? admin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _active = active,
        _donor = donor,
        _client = client,
        _charity = charity,
        _charityAdmin = charityAdmin,
        _admin = admin,
        super(firestoreUtilData);

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;
  bool hasActive() => _active != null;

  // "donor" field.
  bool? _donor;
  bool get donor => _donor ?? false;
  set donor(bool? val) => _donor = val;
  bool hasDonor() => _donor != null;

  // "client" field.
  bool? _client;
  bool get client => _client ?? false;
  set client(bool? val) => _client = val;
  bool hasClient() => _client != null;

  // "charity" field.
  bool? _charity;
  bool get charity => _charity ?? false;
  set charity(bool? val) => _charity = val;
  bool hasCharity() => _charity != null;

  // "charityAdmin" field.
  bool? _charityAdmin;
  bool get charityAdmin => _charityAdmin ?? false;
  set charityAdmin(bool? val) => _charityAdmin = val;
  bool hasCharityAdmin() => _charityAdmin != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  set admin(bool? val) => _admin = val;
  bool hasAdmin() => _admin != null;

  static PermissionsStruct fromMap(Map<String, dynamic> data) =>
      PermissionsStruct(
        active: data['active'] as bool?,
        donor: data['donor'] as bool?,
        client: data['client'] as bool?,
        charity: data['charity'] as bool?,
        charityAdmin: data['charityAdmin'] as bool?,
        admin: data['admin'] as bool?,
      );

  static PermissionsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PermissionsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'active': _active,
        'donor': _donor,
        'client': _client,
        'charity': _charity,
        'charityAdmin': _charityAdmin,
        'admin': _admin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'donor': serializeParam(
          _donor,
          ParamType.bool,
        ),
        'client': serializeParam(
          _client,
          ParamType.bool,
        ),
        'charity': serializeParam(
          _charity,
          ParamType.bool,
        ),
        'charityAdmin': serializeParam(
          _charityAdmin,
          ParamType.bool,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PermissionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PermissionsStruct(
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        donor: deserializeParam(
          data['donor'],
          ParamType.bool,
          false,
        ),
        client: deserializeParam(
          data['client'],
          ParamType.bool,
          false,
        ),
        charity: deserializeParam(
          data['charity'],
          ParamType.bool,
          false,
        ),
        charityAdmin: deserializeParam(
          data['charityAdmin'],
          ParamType.bool,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PermissionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PermissionsStruct &&
        active == other.active &&
        donor == other.donor &&
        client == other.client &&
        charity == other.charity &&
        charityAdmin == other.charityAdmin &&
        admin == other.admin;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([active, donor, client, charity, charityAdmin, admin]);
}

PermissionsStruct createPermissionsStruct({
  bool? active,
  bool? donor,
  bool? client,
  bool? charity,
  bool? charityAdmin,
  bool? admin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PermissionsStruct(
      active: active,
      donor: donor,
      client: client,
      charity: charity,
      charityAdmin: charityAdmin,
      admin: admin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PermissionsStruct? updatePermissionsStruct(
  PermissionsStruct? permissions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    permissions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPermissionsStructData(
  Map<String, dynamic> firestoreData,
  PermissionsStruct? permissions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (permissions == null) {
    return;
  }
  if (permissions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && permissions.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final permissionsData =
      getPermissionsFirestoreData(permissions, forFieldValue);
  final nestedData =
      permissionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = permissions.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPermissionsFirestoreData(
  PermissionsStruct? permissions, [
  bool forFieldValue = false,
]) {
  if (permissions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(permissions.toMap());

  // Add any Firestore field values
  permissions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPermissionsListFirestoreData(
  List<PermissionsStruct>? permissionss,
) =>
    permissionss?.map((e) => getPermissionsFirestoreData(e, true)).toList() ??
    [];
