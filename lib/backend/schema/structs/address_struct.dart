// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? address,
    String? unit,
    String? city,
    String? country,
    String? provinceState,
    String? postalZipCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _unit = unit,
        _city = city,
        _country = country,
        _provinceState = provinceState,
        _postalZipCode = postalZipCode,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "provinceState" field.
  String? _provinceState;
  String get provinceState => _provinceState ?? '';
  set provinceState(String? val) => _provinceState = val;
  bool hasProvinceState() => _provinceState != null;

  // "postalZipCode" field.
  String? _postalZipCode;
  String get postalZipCode => _postalZipCode ?? '';
  set postalZipCode(String? val) => _postalZipCode = val;
  bool hasPostalZipCode() => _postalZipCode != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        address: data['address'] as String?,
        unit: data['unit'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        provinceState: data['provinceState'] as String?,
        postalZipCode: data['postalZipCode'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddressStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'unit': _unit,
        'city': _city,
        'country': _country,
        'provinceState': _provinceState,
        'postalZipCode': _postalZipCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'provinceState': serializeParam(
          _provinceState,
          ParamType.String,
        ),
        'postalZipCode': serializeParam(
          _postalZipCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        provinceState: deserializeParam(
          data['provinceState'],
          ParamType.String,
          false,
        ),
        postalZipCode: deserializeParam(
          data['postalZipCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        address == other.address &&
        unit == other.unit &&
        city == other.city &&
        country == other.country &&
        provinceState == other.provinceState &&
        postalZipCode == other.postalZipCode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([address, unit, city, country, provinceState, postalZipCode]);
}

AddressStruct createAddressStruct({
  String? address,
  String? unit,
  String? city,
  String? country,
  String? provinceState,
  String? postalZipCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      address: address,
      unit: unit,
      city: city,
      country: country,
      provinceState: provinceState,
      postalZipCode: postalZipCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? addressStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addressStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? addressStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addressStruct == null) {
    return;
  }
  if (addressStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && addressStruct.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressStructData =
      getAddressFirestoreData(addressStruct, forFieldValue);
  final nestedData =
      addressStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = addressStruct.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? addressStruct, [
  bool forFieldValue = false,
]) {
  if (addressStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addressStruct.toMap());

  // Add any Firestore field values
  addressStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addressStructs,
) =>
    addressStructs?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
